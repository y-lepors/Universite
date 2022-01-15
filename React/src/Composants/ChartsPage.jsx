import React from "react";
import { Line } from "react-chartjs-2";
import { MDBContainer } from "mdbreact";
import Button from "react-bootstrap/Button";
import "../Styles/ChartsPage.css";


class ChartsPage extends React.Component {
  constructor(props){
    super(props);

    this.state = {
      LaRefresh : 0,
      // yAxisID : "y" ou "y2"
        dataBar : this.props.dataBar, //{
      //   labels: ["2016", "2017", "2018", "2019"],
      //   datasets: [
      //     {
      //       label: "No data"
      //     }
      //   ]
      // },
      barChartOptions: {
        responsive: true,
        maintainAspectRatio: false,
        scales: {
          // xAxes: [
          //   {
          //     barPercentage: 1,
          //     gridLines: {
          //       display: true,
          //       color: "rgba(0, 0, 0, 0.1)"
          //     }
          //   }
          // ],
          
          yLeft : {
            position : "left",
            gridLines: {
              display: true,
              color: "rgba(0, 0, 0, 0.1)"
            },
            ticks: {
              beginAtZero: true
            }
          },
          yRight : {
            position : "right",
            gridLines: {
              display: true,
              color: "rgba(0, 0, 0, 0.1)"
            },
            ticks: {
              beginAtZero: true
            }
          }
        }
      }
    }

    this.clickCapte = this.clickCapte.bind(this);
    this.clickAdd = this.clickAdd.bind(this);

    
  }

  needRefresh = () => {
    
    let refresh = this.state.LaRefresh;
    refresh++;
    
  }

  clickCapte() {
    

    this.setState({dataBar : {
      labels: ["2016", "2017", "2018", "2019"],
      datasets: [
        {
          label: "No data"
        }
      ]
    }});
  }

  clickAdd () {
    this.setState({dataBar : this.props.dataBar});
  }

  
  


  render() {

    if(this.state.LaRefresh != this.props.needRefresh){
      this.needRefresh();
    }

    return (
      
      <div>
      <MDBContainer id="Graphique">
        <h3 className="mt-5">Comparaison des effectifs de formation</h3>
       
        <Line id="Line" data= {this.state.dataBar} options={this.state.barChartOptions}/>
      </MDBContainer>
      <br/>
      <br/>
      <br/>

        <strong> Afin de rafraichir le graphique après l'ajout ou la suppression de données veuillez cliquez sur le bouton 1 puis 2</strong>
        <br/><br/>

        <Button variant="warning" onClick={this.clickCapte}>Refresh 1</Button>{' '}
        <Button variant="warning" onClick={this.clickAdd}>Refresh 2</Button>
      </div>
    );
  }
}

export default ChartsPage;