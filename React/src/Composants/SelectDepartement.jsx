import React, {Component} from "react";
import Form from 'react-bootstrap/Form'

class SelectDepartement extends Component {
    constructor(props){
        super(props);

        this.state = {
            error : null,
            listeDepartement : []
        };


    }


    componentDidMount() {
        fetch("http://localhost:7131/departementFilterUFR")
        .then(res=> res.json())
        .then(
            (result) => {
                this.setState({
                    listeDepartement : result
                });
            },
            (error) => {
                this.setState({
                    error
                });
            }
        )
    }

    handleChange = (event) => {
        this.props.onDepartementChange(event.currentTarget.value);
        console.log(event.currentTarget.value);
    }

    render(){
        const {listeDepartement} = this.state;
            return (<div>
                <Form.Select value={this.props.idDepartement} onChange={this.handleChange}>

                    <option value="-1">--Choisir un département--</option>

                    {listeDepartement.filter((dept) => 
                    this.props.idUFR == -1 
                    || dept.UFR_idUFR == this.props.idUFR
                    ).map((dept) => <option value={dept.idDepartement} key={dept.idDepartement}>
                    {dept.nomDepartement} </option> )}

                </Form.Select>


                
                </div>
            )
        }
}

export default SelectDepartement;