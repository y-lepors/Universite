import React, {Component} from "react";
import Navbar from 'react-bootstrap/Navbar';
import Container from 'react-bootstrap/Container';
import Nav from 'react-bootstrap/Nav';
import Form from 'react-bootstrap/Form';
import FormControl from 'react-bootstrap/FormControl';
import Button from 'react-bootstrap/Button';
import "../Styles/Header.css"
import ubo from '../images/ubo.png';
import maison from '../images/maison.png'
import intero from "../images/point-dinterrogation.png"

class Header extends Component{

    constructor(props) {
        super(props);
        this.state = {
            affichMenu : true,
            affichEffectif : false
        };
    };

    render(){
        return (
        <div>

        <Navbar sticky="top" bg="warning" expand="lg" class="NavbarYellow">
        <Container fluid>
            <Navbar.Brand href="#">
                <img src={ubo} alt="UBO" width="90" height="85" />
            </Navbar.Brand>
            <Navbar.Toggle aria-controls="navbarScroll" />
            <Navbar.Collapse id="navbarScroll">
            <Form className="d-flex">
                <FormControl
                type="search"
                placeholder="Search"
                className="me-2"
                aria-label="Search"
                />
                <Button variant="outline-success">Search</Button>
            </Form>

            <Nav.Link href="#action1"> <img src={maison} alt="Maison" width="20" height="20" /> </Nav.Link>
                <Nav.Link href="#action2"><img src={intero} alt="Interrogation" width="20" height="20" /></Nav.Link>
            </Navbar.Collapse>
        </Container>
        </Navbar>
        
            
        
           
        </div>)
    }


}

export default Header;