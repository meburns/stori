import React, { useState } from "react";
import {DragDropContext, Droppable, Draggable} from 'react-beautiful-dnd';

import Grid from '@material-ui/core/Grid';
import Card from '@material-ui/core/Card';
import FormControl from "@material-ui/core/FormControl";
import FormLabel from "@material-ui/core/FormLabel";
import FormHelperText from "@material-ui/core/FormHelperText";
import OutlinedInput from "@material-ui/core/OutlinedInput";

import { setLocalStorage } from "../../util.js";
import { withStyles } from "@material-ui/core/styles";

// TIMELINE
function Timeline({ data, updateData, classes }) {
  document.title = "Timeline";
  // TODO: grab data from the backend
  const [state, setState] = useState({ timelineData: JSON.parse(data) });

  function reorder(list, source, destination) {
    let newList = Array.from(list);
    let [movedItem] = newList[source.droppableId].data.splice(source.index, 1);
    newList[destination.droppableId].data.splice(destination.index, 0, movedItem);

    return newList;
  }

  function onDragEnd(result) {
    // dropped outside the list
    if (!result.destination) {
      return;
    }

    const items = reorder(
      state.timelineData,
      result.source,
      result.destination
    );

    _updateStorage(items);
  }

  function _handleChange(boxId, blockId, event) {
    let td = state.timelineData;
    for (var i=0; i < td.length; i++) {
      const box = td[i];
      if (box.id.toString() === boxId.toString()) {
        for (var j=0; j < box.data.length; j++) {
          let block = box.data[j];
          if (block.id.toString() === blockId.toString()) {
            block.content = event.target.value;
          }
        }
      }
    }

    _updateStorage(td);
  }

  function _updateStorage(newData) {
    setState({
      timelineData: JSON.parse(JSON.stringify(newData))
    });
    setLocalStorage("timelineData", JSON.stringify(newData));
    updateData(JSON.stringify(newData));
  }

  function getColumns() {
    let columns = [];

    for (var i=0; i < state.timelineData.length; i++) {
      const column = state.timelineData[i];
      if (column.data) {
        columns.push(
          <Droppable droppableId={`${i}`} key={i}>
            {(provided, snapshot) => (
              <Grid item xs >
                <Card
                  {...provided.droppableProps}
                  ref={provided.innerRef}
                  style={{ padding: "20px", margin: "5px" }}
                >
                  {column.data.map((item, index) => (
                    <Draggable key={item.id} draggableId={item.id} index={index}>
                      {(provided, snapshot) => (
                        <Card
                          ref={provided.innerRef}
                          {...provided.draggableProps}
                          {...provided.dragHandleProps}
                        >
                          <OutlinedInput style={{ padding: "20px" }} value={item.content} onChange={(e)=>{_handleChange(column.id, item.id, e)}} />
                        </Card>
                      )}
                    </Draggable>
                  ))}
                  {provided.placeholder}
                </Card>
              </Grid>
            )}
          </Droppable>
        );
      }
    }

    return (
      <DragDropContext onDragEnd={onDragEnd}>
        {columns}
      </DragDropContext>
    );
  }

  return (
    <Grid container>
      <Grid item xs={12}>
        <h1>My Timeline</h1>
      </Grid>
      <Grid item xs={12}>
        <Card
          style={{ padding: "20px", margin: "5px" }}
        >
          <Grid container>
            {getColumns()}
          </Grid>
        </Card>
      </Grid>
    </Grid>
  );
}

const styles = {
  main: { padding: "10px" },
  column: {
    padding: "5px;"
  },
  row: {
    minHeight: "200px",
    "&:nth-child(even)": {
      textAlign: "right"
    }
  }
};

export default withStyles(styles)(Timeline);
