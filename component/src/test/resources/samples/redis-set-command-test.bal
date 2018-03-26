// Copyright (c) 2018 WSO2 Inc. (http://www.wso2.org) All Rights Reserved.
//
// WSO2 Inc. licenses this file to you under the Apache License,
// Version 2.0 (the "License"); you may not use this file except
// in compliance with the License.
// You may obtain a copy of the License at
//
// http://www.apache.org/licenses/LICENSE-2.0
//
// Unless required by applicable law or agreed to in writing,
// software distributed under the License is distributed on an
// "AS IS" BASIS, WITHOUT WARRANTIES OR CONDITIONS OF ANY
// KIND, either express or implied.  See the License for the
// specific language governing permissions and limitations
// under the License.

import ballerina/data.redis;

const string REDIS_HOST = "localhost";

function testSAdd () returns (int) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    int result = conn -> sAdd("testSAddKey", ["testSAddValue3", "testSAddValue4", "testSAddValue5"]);
    _ = conn -> quit();
    return result;
}

function testSDiff () returns (string[]) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    string[] result = conn -> sDiff(["testSDiffKey1", "testSDiffKey2"]);
    _ = conn -> quit();
    return result;
}

function testSDiffStore () returns (int) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    int result = conn -> sDiffStore("testSDiffStoreDestKey", ["testSDiffKey1", "testSDiffKey2"]);
    _ = conn -> quit();
    return result;
}

function testSInter () returns (string[]) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    string[] result = conn -> sInter(["testSInterKey1", "testSInterKey2"]);
    _ = conn -> quit();
    return result;
}

function testSInterStore () returns (int) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    int result = conn -> sInterStore("testSInterDestKey", ["testSInterKey1", "testSInterKey2"]);
    _ = conn -> quit();
    return result;
}

function testSIsMember () returns (boolean) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    boolean result = conn -> sIsMember("testSIsMemberKey", "testSIsMemberValue");
    _ = conn -> quit();
    return result;
}

function testSMembers () returns (string[]) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    string[] result = conn -> sMembers("testSMembersKey");
    _ = conn -> quit();
    return result;
}

function testSPop () returns (string[]) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    string[] result = conn -> sPop("testSPopKey", 2);
    _ = conn -> quit();
    return result;
}

function testSRandMember () returns (string[]) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    string[] result = conn -> sRandMember("testSRandMemberKey", 2);
    _ = conn -> quit();
    return result;
}

function testSRem () returns (int) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    int result = conn -> sRem("testSRemKey", ["testSRemValue1", "testSRemValue3"]);
    _ = conn -> quit();
    return result;
}

function testSUnion () returns (string[]) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    string[] result = conn -> sUnion(["testUnionKey1", "testUnionKey2"]);
    _ = conn -> quit();
    return result;
}

function testSUnionStore () returns (int) {
    endpoint redis:Client conn {
        host:REDIS_HOST,
        password:"",
        options:{}
    };
    int result = conn -> sUnionStore("testSUnionStoreDestKey", ["testUnionKey1", "testUnionKey2"]);
    _ = conn -> quit();
    return result;
}