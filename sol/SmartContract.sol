// SPDX-License-Identifier: GPL-3.0
pragma solidity ^0.8.17;

contract ClothingManufacture {
    enum Status { Pending, Accepted, Rejected }

    struct Manufacturer {
        address manufacturerAddress;
        string manufacturerName;
    }

    struct Batch {
        address producer;
        string sellerName;
        string companyName;
        string batchNumber;
        string quantity;
        string companyAddress;
        Status status;


Manufacturer public manufacturer;
    mapping(string => Batch) private batches;
    mapping(address => string[]) private producerBatches;

    modifier onlyManufacturer() {
        require(msg.sender == manufacturer.manufacturerAddress, "Only the manufacturer can call this function.");
        _;
    }

    constructor(string memory _manufacturerName) {
        manufacturer.manufacturerAddress = msg.sender;
        manufacturer.manufacturerName = _manufacturerName;
    }
