import "bootstrap";

import { addEventListenerforAccordionTab } from '../layouts/accordion';
import { addEventListenerToEmptyTick } from './profile';
import { addEventListenerToTabs } from './profile';
import { disableButton } from '../guards/button_unavailable';

addEventListenerforAccordionTab();
addEventListenerToEmptyTick();
addEventListenerToTabs();
disableButton();

