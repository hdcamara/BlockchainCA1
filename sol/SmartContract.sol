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
