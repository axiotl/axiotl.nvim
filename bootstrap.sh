#!/bin/bash

nvim --headless -c "Lazy sync" -c "qa!"
nvim --headless -c "TSUpdate" -c "qa!"
