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
package ballerina.redis;

public type RedisClient object {
    // String operations
    @Description {value:"Append a value to a key"}
    @Param {value:"key:The key"}
    @Param {value:"value:The string value to be appended"}
    @Return {value:"Length of the string after the operation"}
    public native function append (string key, string value) returns (int|error);

    @Description {value:"Count set bits in a string"}
    @Param {value:"key:The key"}
    @Return {value:"The number of bits set to 1"}
    public native function bitCount (string key) returns (int|error);

    @Description {value:"Perform bitwise AND between strings"}
    @Param {value:"destination:Result key of the operation"}
    @Param {value:"value:Input keys to perform AND between"}
    @Return {value:"The size of the string stored in the destination key, that is equal to the size of the longest
input string"}
    public native function bitOpAnd (string destination, string[] keys)
        returns (int|error);

    @Description {value:"Perform bitwise OR between strings"}
    @Param {value:"destination:Result key of the operation"}
    @Param {value:"value:Input keys to perform AND between"}
    @Return {value:"The size of the string stored in the destination key, that is equal to the size of the longest
input string"}
    public native function bitOpOr (string destination, string[] keys)
        returns (int|error);

    @Description {value:"Perform bitwise NOT on a string"}
    @Param {value:"destination:Result key of the operation"}
    @Param {value:"value:Input keys to perform AND between"}
    @Return {value:"The size of the string stored in the destination key"}
    public native function bitOpNot (string destination, string key)
        returns (int|error);

    @Description {value:"Perform bitwise XOR between strings"}
    @Param {value:"destination:Result key of the operation"}
    @Param {value:"value:Input keys to perform AND between"}
    @Return {value:"The size of the string stored in the destination key, that is equal to the size of the longest
input string"}
    public native function bitOpXor (string destination, string[] key)
        returns (int|error);

    @Description {value:"Decrement the integer value of a key by one"}
    @Param {value:"key:The key"}
    @Return {value:"The value of the key after the decrement"}
    public native function decr (string key) returns (int|error);

    @Description {value:"Decrement the integer value of a key by the given number"}
    @Param {value:"key:The key"}
    @Return {value:"The value of the key after the decrement"}
    public native function decrBy (string key, int value) returns (int|error);

    @Description {value:"Returns the bit value at offset in the string value stored at key"}
    @Param {value:"key:The key"}
    @Param {value:"offset:The offset"}
    @Return {value:"the bit value stored at offset"}
    public native function getBit (string key, int offset) returns (int|error);

    @Description {value:"Get a substring of the string stored at a key"}
    @Param {value:"key:The key"}
    @Param {value:"start:The starting point of the substring"}
    @Param {value:"end:The end point of the substring"}
    @Return {value:"The substring"}
    public native function getRange (string key, int startPos, int end)
        returns (string|error);

    @Description {value:"Set the string value of a key and return its old value"}
    @Param {value:"key:The key"}
    @Param {value:"value:The value to be set"}
    @Return {value:"the old value stored at key, or null when key does not exist"}
    public native function getSet (string key, string value) returns (string|error);

    @Description {value:"Get the value of a key"}
    @Param {value:"key:The key"}
    @Return {value:"the value of the key, or null when key does not exist"}
    public native function get (string key) returns (string|error);

    @Description {value:"Increment the integer value of a key by one"}
    @Param {value:"key:The key"}
    @Return {value:"the value of the key after increment"}
    public native function incr (string key) returns (int|error);

    @Description {value:"Increment the integer value of a key by the given amount"}
    @Param {value:"key:The key"}
    @Param {value:"value:The amount to increment"}
    @Return {value:"the value of the key after increment"}
    public native function incrBy (string key, int value) returns (int|error);

    @Description {value:"Increment the integer value of a key by the given amount"}
    @Param {value:"key:The key"}
    @Param {value:"value:The amount to increment"}
    @Return {value:"the value of the key after increment"}
    public native function incrByFloat (string key, float value) returns (float|error);

    @Description {value:"Get the values of all the given keys"}
    @Param {value:"key:The key"}
    @Return {value:"Array of values at the specified keys"}
    public native function mGet (string[] keys) returns (string[]|error);

    @Description {value:"Set multiple keys to multiple values"}
    @Param {value:"keyValueMap:A map of key-value pairs to be set"}
    @Return {value:"A string with the value \"OK\" if the operation was successful"}
    public native function mSet (map keyValueMap) returns (string|error);

    @Description {value:"Set multiple keys to multiple values, only if none of the keys exist"}
    @Param {value:"keyValueMap:A map of key-value pairs to be set"}
    @Return {value:"A string with the value \"OK\" if the operation was successful"}
    public native function mSetNx (map keyValueMap) returns (boolean|error);

    @Description {value:"Set the value and expiration in milliseconds of a key"}
    @Param {value:"key:The key"}
    @Param {value:"value:The value to be set"}
    @Param {value:"value:Expiration time in milli seconds"}
    @Return {value:"New value of the key"}
    public native function pSetEx (string key, string value, int expirationTime)
        returns (string|error);

    @Description {value:"Sets or clears the bit at offset in the string value stored at key"}
    @Param {value:"key:The key"}
    @Param {value:"value:The value to be set"}
    @Param {value:"offset:The offset at which the value should be set"}
    @Return {value:"the original bit value stored at offset"}
    public native function setBit (string key, int value, int offset) returns (int|error);

    @Description {value:"Set the value and expiration of a key"}
    @Param {value:"key:The key"}
    @Param {value:"value:The value to be set"}
    @Param {value:"expirationPeriodSeconds:Expiration time to be set, in seconds"}
    @Return {value:"New value of the key"}
    public native function setEx (string key, string value, int expirationPeriodSeconds)
        returns (string|error);

    @Description {value:"Set the value of a key, only if the key does not exist"}
    @Param {value:"key:The key"}
    @Param {value:"value:The value to be set"}
    @Return {value:"New value of the key"}
    public native function setNx (string key, string value) returns (boolean|error);

    @Description {value:"Overwrite part of a string at key starting at the specified offset"}
    @Param {value:"key:The key"}
    @Param {value:"offset:The offset at which the value should be set"}
    @Param {value:"value:The value to be set"}
    @Return {value:"The length of the string after it was modified"}
    public native function setRange (string key, int offset, string value)
        returns (int|error);

    @Description {value:"Get the length of the value stored in a key"}
    @Param {value:"key:The key"}
    @Return {value:" the length of the string at key, or 0 when key does not exist"}
    public native function strln (string key) returns (int|error);

    @Description {value:"Set the value of a key"}
    @Param {value:"key:The key"}
    @Param {value:"value:The value to be set"}
    @Return {value:"A string with the value \"OK\" if the operation was successful"}
    public native function setVal (string key, string value) returns (string|error);

    //list operations

    @Description {value:"Prepend one or multiple values to a list"}
    @Param {value:"key:The key"}
    @Param {value:"value:The values to be prepended"}
    @Return {value:"The length of the list after the push operation(s)"}
    public native function lPush (string key, string[] values) returns (int|error);

    @Description {value:"Remove and get the first element in a list"}
    @Param {value:"key:The key"}
    @Return {value:"the value of the first element, or null when key does not exist"}
    public native function lPop (string key) returns (string|error);

    @Description {value:"Prepend one or multiple values to a list, only if the list exists"}
    @Param {value:"key:The key"}
    @Param {value:"value:The values to be prepended"}
    @Return {value:"The length of the list after the push operation(s)"}
    public native function lPushX (string key, string[] values) returns (int|error);

    @Description {value:"Remove and get the first element in a list, or block until one is available"}
    @Param {value:"timeout:The timeout in seconds"}
    @Param {value:"key:The keys"}
    @Return {value:"null when no element could be popped and the timeout expired. A map containing one item, with the
key being  the name of the key where an element was popped and the second element  being the value of the popped
element."}
    public native function bLPop (int timeOut, string[] keys) returns (map|error);

    @Description {value:"Remove and get the last element in a list, or block until one is available"}
    @Param {value:"timeout:The timeout in seconds"}
    @Param {value:"key:The keys"}
    @Return {value:"null when no element could be popped and the timeout expired. A map containing one item, with the
key being  the name of the key where an element was popped and the second element  being the value of the popped
element."}
    public native function bRPop (int timeOut, string[] keys) returns (map|error);

    @Description {value:"Get an element from a list by its index"}
    @Param {value:"key:The key"}
    @Param {value:"index:The index from which the element should be retrieved"}
    @Return {value:"The value at the given index"}
    public native function lIndex (string key, int index) returns (string|error);

    @Description {value:"Insert an element before or after another element in a list"}
    @Param {value:"key:The key"}
    @Param {value:"before:boolean value representing Whether element should be inserted before or after the pivot"}
    @Param {value:"pivot:The pivot"}
    @Return {value:"the length of the list after the insert operation, or -1 when the value pivot not
 found"}
    public native function lInsert (string key, boolean before, string pivot, string value)
        returns (int|error);

    @Description {value:"Get the length of a list"}
    @Param {value:"key:The key"}
    @Return {value:"The length of the list at key"}
    public native function lLen (string key) returns (int|error);

    @Description {value:"Get a range of elements from a list"}
    @Param {value:"key:The key"}
    @Param {value:"start:The begining index of the range"}
    @Param {value:"stop:The last index of the range"}
    @Return {value:"Array of elements in the specified range"}
    public native function lRange (string key, int startPos, int stopPos)
        returns (string[]|error);

    @Description {value:"Remove elements from a list"}
    @Param {value:"key:The key"}
    @Param {value:"count:The number of elements to be removed"}
    @Param {value:"value:The value which the elements to be removed should be equal to"}
    @Return {value:"Number of elements removed"}
    public native function lRem (string key, int count, string value) returns (int|error);

    @Description {value:"Set the value of an element in a list by its index"}
    @Param {value:"key:The key of the list"}
    @Param {value:"index:The index of the element of which the value needs to be set"}
    @Param {value:"value:The value to be set"}
    @Return {value:"A string with the value \"OK\" if the operation was successful"}
    public native function lSet (string key, int index, string value)
        returns (string|error);

    @Description {value:"Trim a list to the specified range"}
    @Param {value:"key:The key of the list"}
    @Param {value:"start:The starting index of the range"}
    @Param {value:"stop:The end index of the range"}
    @Return {value:"A string with the value \"OK\" if the operation was successful"}
    public native function lTrim (string key, int startPos, int stopPos) returns (string|error);

    @Description {value:"Remove and get the last element in a list"}
    @Param {value:"key:The key of the list"}
    @Return {value:"The value of the last element, or null when key does not exist"}
    public native function rPop (string key) returns (string|error);

    @Description {value:"Remove the last element in a list, append it to another list and return it"}
    @Param {value:"source:The source key"}
    @Param {value:"destination:The destination key"}
    @Return {value:"The element being popped and pushed"}
    public native function rPopLPush (string source, string destination)
        returns (string|error);

    @Description {value:" Append one or multiple values to a list"}
    @Param {value:"key:The key of the list"}
    @Param {value:"values:Array of values to be appended"}
    @Return {value:"The length of the list after the push operation"}
    public native function rPush (string key, string[] values) returns (int|error);

    @Description {value:" Append one or multiple values to a list, only if the list exists"}
    @Param {value:"key:The key of the list"}
    @Param {value:"values:Array of values to be appended"}
    @Return {value:"The length of the list after the push operation"}
    public native function rPushX (string key, string[] values) returns (int|error);

    // Set Commands
    @Description {value:"Add one or more members to a set"}
    @Param {value:"key:The key of the set"}
    @Param {value:"values:Array of values to be added"}
    @Return {value:"the number of elements that were added to the set, not including all the elements which were
already present in the set"}
    public native function sAdd (string key, string[] values) returns (int|error);

    @Description {value:"Get the number of members in a set"}
    @Param {value:"key:The key of the set"}
    @Return {value:"The cardinality (number of elements) of the set"}
    public native function sCard (string key) returns (int|error);

    @Description {value:"Return set resulting from the difference between the first set and all the successive sets"}
    @Param {value:"keys:The keys of the sets"}
    @Return {value:"An array of members of the resulting set"}
    public native function sDiff (string[] keys) returns (string[]|error);

    @Description {value:"Obtain the set resulting from the difference between the first set and all the successive
sets and store at the provided destination"}
    @Param {value:"destination:The destination key of the resulting set"}
    @Return {value:"The number of members in the resulting set"}
    public native function sDiffStore (string destination, string[] keys)
        returns (int|error);

    @Description {value:"Return the intersection of the provided sets"}
    @Param {value:"keys:The keys of the sets to be intersected"}
    @Return {value:"An array of members of the resulting set"}
    public native function sInter (string[] keys) returns (string[]|error);

    @Description {value:"Obtain the intersection of the provided sets and store at the provided destination"}
    @Param {value:"destination:The destination key of the resulting set"}
    @Param {value:"keys:The keys of the sets to be intersected"}
    @Return {value:"An array of members of the resulting set"}
    public native function sInterStore (string destination, string[] keys)
        returns (int|error);

    @Description {value:"Determine if a given value is a member of a set"}
    @Param {value:"key:The key of the set"}
    @Param {value:"value:The value"}
    @Return {value:"boolean true/false depending on whether the value is a member of the set or not"}
    public native function sIsMember (string key, string value) returns (boolean|error);

    @Description {value:"Get all the members in a set"}
    @Param {value:"key:The key of the set"}
    @Return {value:"Array of all members in the set"}
    public native function sMembers (string key) returns (string[]|error);

    @Description {value:"Move a member from one set to another"}
    @Param {value:"source:The source key"}
    @Param {value:"destination:The destination key"}
    @Return {value:"true if the element is moved. false if the element is not a member of source and no
 operation was performed"}
    public native function sMove (string source, string destination, string member)
        returns (boolean|error);


    @Description {value:"Remove and return a random member from a set"}
    @Param {value:"key:The source key"}
    @Param {value:"count:Number of members to pop"}
    @Return {value:"Array of removed elements or null if key does not exist"}
    public native function sPop (string key, int count) returns (string[]|error);

    @Description {value:"Get one or multiple random members from a set"}
    @Param {value:"key:The key of the set"}
    @Param {value:"count:Number of members to obtain"}
    @Return {value:"Array of the randomly selected elements, or null when key does not exist"}
    public native function sRandMember (string key, int count) returns (string[]|error);

    @Description {value:"Remove one or more members from a set"}
    @Param {value:"key:The key of the set"}
    @Param {value:"members:Array of members to remove"}
    @Return {value:"The number of members that were removed from the set, not including non existing members"}
    public native function sRem (string key, string[] members) returns (int|error);

    @Description {value:"Return the union of multiple sets"}
    @Param {value:"keys:Array of keys of sets"}
    @Return {value:"Array of members of the resulting set"}
    public native function sUnion (string[] keys) returns (string[]|error);

    @Description {value:"Return the union of multiple sets"}
    @Param {value:"destination: The destination key of the resulting set"}
    @Param {value:"keys:Array of keys of sets"}
    @Return {value:"Number of members of the resulting set"}
    public native function sUnionStore (string destination, string[] keys)
        returns (int|error);

    //Sorted set Commands
    @Description {value:"Add one or more members to a sorted set, or update its score if it already exist"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"memberScoreMap:A map of members and corresponding scores"}
    @Return {value:"the number of elements that were added to the sorted set, not including all the elements which were
already present in the set for which the score was updated"}
    public native function zAdd (string key, map memberScoreMap) returns (int|error);

    @Description {value:"Get the number of members in a sorted set"}
    @Param {value:"key:The key of the sorted set"}
    @Return {value:"The cardinality (number of elements) of the sorted set"}
    public native function zCard (string key) returns (int|error);

    @Description {value:"Count the members in a sorted set with scores within the given range"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"min:The minimum score of the range"}
    @Param {value:"max:The maximum score of the range"}
    @Return {value:"The number of elements in the specified score range"}
    public native function zCount (string key, float min, float max) returns (int|error);

    @Description {value:"Increment the score of a member in a sorted set"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"amount:The amount to increment"}
    @Param {value:"member:The member whose score to be incremented"}
    @Return {value:"The new score of the member"}
    public native function zIncrBy (string key, float amount, string member)
        returns (float|error);

    @Description {value:"Intersect multiple sorted sets and store the resulting sorted set in a new key"}
    @Param {value:"destination:The destination key of the resulting sorted set"}
    @Param {value:"keys:The keys of the sorted sets to be intersected"}
    @Return {value:"The number of elements in the resulting sorted set"}
    public native function zInterStore (string destination, string[] keys)
        returns (int|error);

    @Description {value:"Count the members in a sorted set within the given lexicographical range"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"min:The minimum lexicographical value of the range"}
    @Param {value:"max:The maximum lexicographical value of the range"}
    @Return {value:"The number of elements in the specified lexicographical value range"}
    public native function zLexCount (string key, string min, string max)
        returns (int|error);

    @Description {value:"Return a range of members in a sorted set, by index"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"min:The minimum index of the range"}
    @Param {value:"max:The maximum index of the range"}
    @Return {value:"The number of elements in the specified index range"}
    public native function zRange (string key, int min, int max) returns (string[]|error);

    @Description {value:"Return a range of members in a sorted set, by lexicographical range from lowest to highest"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"min:The minimum lexicographical value of the range"}
    @Param {value:"max:The maximum lexicographical value of the range"}
    @Return {value:"Array of members in the specified lexicographical value range ordered from lowest to highest"}
    public native function zRangeByLex (string key, string min, string max)
        returns (string[]|error);

    @Description {value:"Return a range of members in a sorted set, by lexicographical range ordered from highest to
lowest"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"min:The lexicographical value of the range"}
    @Param {value:"max:The maximum lexicographical value of the range"}
    @Return {value:"Array of members in the specified lexicographical value range ordered from highest to lowest"}
    public native function zRevRangeByLex (string key, string min, string max)
        returns (string[]|error);

    @Description {value:"Return a range of members in a sorted set, by score from lowest to highest"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"min:The minimum score of the range"}
    @Param {value:"max:The maximum score of the range"}
    @Return {value:"Array of members in the specified score range ordered from lowest to highest"}
    public native function zRangeByScore (string key, float min, float max)
        returns (string[]|error);

    @Description {value:"Determine the index of a member in a sorted set"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"member:The member of which the index needs to be obtained"}
    @Return {value:"The index of the member"}
    public native function zRank (string key, string member) returns (int|error);

    @Description {value:"Remove one or more members from a sorted set"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"members:The members to be removed"}
    @Return {value:"The number of members removed from the sorted set, not including non existing members"}
    public native function zRem (string key, string[] members) returns (int|error);

    @Description {value:"Remove all members in a sorted set between the given lexicographical range"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"min:The minimum lexicographical value of the range"}
    @Param {value:"max:The maximum lexicographical value of the range"}
    @Return {value:"The number of members removed from the sorted set"}
    public native function zRemRangeByLex (string key, string min, string max)
        returns (int|error);

    @Description {value:"Remove all members in a sorted set within the given indices"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"min:The minimum index of the range"}
    @Param {value:"max:The maximum index of the range"}
    @Return {value:"The number of members removed from the sorted set"}
    public native function zRemRangeByRank (string key, int min, int max)
        returns (int|error);

    @Description {value:"Remove all members in a sorted set within the given scores"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"min:The minimum score of the range"}
    @Param {value:"max:The maximum score of the range"}
    @Return {value:"The number of members removed from the sorted set"}
    public native function zRemRangeByScore (string key, float min, float max)
        returns (int|error);

    @Description {value:"Return a range of members in a sorted set, by index, ordered highest to lowest"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"min:The minimum index of the range"}
    @Param {value:"max:The maximum index of the range"}
    @Return {value:"The number of elements in the specified index range"}
    public native function zRevRange (string key, int min, int max)
        returns (string[]|error);

    @Description {value:"Return a range of members in a sorted set, by score from highest to lowest"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"min:The minimum score of the range"}
    @Param {value:"max:The maximum score of the range"}
    @Return {value:"Array of members in the specified score range ordered from highest to lowest"}
    public native function zRevRangeByScore (string key, float min, float max)
        returns (string[]|error);

    @Description {value:"Determine the index of a member in a sorted set"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"member:The member of which the index needs to be obtained"}
    @Return {value:"The index of the member"}
    public native function zRevRank (string key, string member) returns (int|error);

    @Description {value:"Determine the score of a member in a sorted set"}
    @Param {value:"key:The key of the sorted set"}
    @Param {value:"member:The member of which the score needs to be obtained"}
    @Return {value:"The score of the member"}
    public native function zScore (string key, string member) returns (float|error);

    @Description {value:"Return the union of multiple sorted sets"}
    @Param {value:"destination: The destination key of the resulting set"}
    @Param {value:"keys:Array of keys of sorted sets"}
    @Return {value:"Number of members of the resulting sorted set"}
    public native function zUnionStore (string dest, string[] keys) returns (int|error);

    //Hash Commands

    @Description {value:"Delete one or more hash fields"}
    @Param {value:"key: The key of the hash"}
    @Param {value:"fields:Array of fields to be deleted"}
    @Return {value:"Number of fields that were removed from the hash, not including specified but non existing fields"}
    public native function hDel (string key, string[] fields) returns (int|error);

    @Description {value:"Determine if a hash field exists"}
    @Param {value:"key: The key of the hash"}
    @Param {value:"field:Array of fields to be deleted"}
    @Return {value:"boolean true if the hash contains the field. boolean false if the hash does not contain
field or key does not exist"}
    public native function hExists (string key, string field) returns (boolean|error);

    @Description {value:"Get the value of a hash field"}
    @Param {value:"key:The key of the hash"}
    @Param {value:"field:The field"}
    @Return {value:"The value of the field"}
    public native function hGet (string key, string field) returns (string|error);

    @Description {value:"Get the all values of a hash"}
    @Param {value:"key:The key of the hash"}
    @Return {value:"Map of field-value pairs"}
    public native function hGetAll (string key) returns (map|error);

    @Description {value:"Increment the integer value of a hash field by the given number"}
    @Param {value:"key:The key of the hash"}
    @Param {value:"field:The field"}
    @Param {value:"amount:The amount to increment"}
    @Return {value:"The value of the field"}
    public native function hIncrBy (string key, string field, int amount)
        returns (int|error);

    @Description {value:"Increment the float value of a hash field by the given number"}
    @Param {value:"key:The key of the hash"}
    @Param {value:"field:The field"}
    @Param {value:"amount:The amount to increment"}
    @Return {value:"The value of the field"}
    public native function hIncrByFloat (string key, string field, float amount)
        returns (float|error);

    @Description {value:"Get all the fields in a hash"}
    @Param {value:"key:The key of the hash"}
    @Return {value:"Array of hash fields"}
    public native function hKeys (string key) returns (string[]|error);

    @Description {value:"Get the number of fields in a hash"}
    @Param {value:"key:The key of the hash"}
    @Return {value:"Number of fields"}
    public native function hLen (string key) returns (int|error);

    @Description {value:"Get the values of all the given hash fields"}
    @Param {value:"key:The key of the hash"}
    @Param {value:"fields:Array of hash fields"}
    @Return {value:"Map of field-value pairs"}
    public native function hMGet (string key, string[] fields) returns (map|error);

    @Description {value:"Set multiple hash fields to multiple values"}
    @Param {value:"key:The key of the hash"}
    @Param {value:"fieldValueMap:Map of field-value pairs"}
    @Return {value:"A string with the value \"OK\" if the operation was successful"}
    public native function hMSet (string key, map fieldValueMap) returns (string|error);

    @Description {value:"Set the string value of a hash field"}
    @Param {value:"key:The key of the hash"}
    @Param {value:"field:The field"}
    @Param {value:"value:The value to be set to the field"}
    @Return {value:"boolean true if field is a new field in the hash and value was set. boolean false if
 field already exists in the hash and the value was updated"}
    public native function hSet (string key, string field, string value)
        returns (boolean|error);

    @Description {value:"Set the string value of a hash field, only if the field does not exist"}
    @Param {value:"key:The key of the hash"}
    @Param {value:"field:The field"}
    @Param {value:"value:The value to be set to the field"}
    @Return {value:"boolean true if field is a new field in the hash and value was set. boolean false if
 field already exists in the hash and no operation was performed"}
    public native function hSetNx (string key, string field, string value)
        returns (boolean|error);

    @Description {value:"Get the string length of the field value in a hash"}
    @Param {value:"key:The key of the hash"}
    @Param {value:"field:The field"}
    @Return {value:"length of the field value, or 0 when field is not present in the hash or key does
 not exist at all"}
    public native function hStrln (string key, string field) returns (int|error);

    @Description {value:"Get all the values in a hash"}
    @Param {value:"key:The key of the hash"}
    @Return {value:"Array of values in the hash, or an empty array when key does not exist"}
    public native function hVals (string key) returns (string[]|error);

    //Key Commands

    @Description {value:"Delete one or more keys"}
    @Param {value:"keys:The key to be deleted"}
    @Return {value:"The number of keys that were removed"}
    public native function del (string[] keys) returns (int|error);

    @Description {value:"Determine how many keys exist"}
    @Param {value:"keys:The keys of which existence to be found out"}
    @Return {value:"The number of existing keys"}
    public native function exists (string[] keys) returns (int|error);

    @Description {value:"Set a key's time to live in seconds"}
    @Param {value:"key:The keys of which expiry time to be set"}
    @Param {value:"seconds:Expiry in seconds"}
    @Return {value:"true if the timeout was set. false if key does not exist or the timeout could not be set"}
    public native function expire (string key, int seconds) returns (boolean|error);

    @Description {value:"Find all keys matching the given pattern"}
    @Param {value:"pattern:The pattern to match"}
    @Return {value:"Array of keys matching the given pattern"}
    public native function keys (string pattern) returns (string[]|error);

    @Description {value:"Move a key to another database"}
    @Param {value:"key:The key to be moved"}
    @Param {value:"database:The database to which the key needs to be moved"}
    @Return {value:"boolean true if key was succesfully moved, boolean false otherwise"}
    public native function move (string key, int database) returns (boolean|error);

    @Description {value:"Remove the expiration from a key"}
    @Param {value:"key:The key of which expiry time should be removed"}
    @Return {value:"boolean true if the timeout was removed. boolean false if key does not exist or does not have
 an associated timeout"}
    public native function persist (string key) returns (boolean|error);

    @Description {value:"Set a key's time to live in millisecondsy"}
    @Param {value:"key:The key of which expiry time should be removed"}
    @Param {value:"timeMilliSeconds:The expiry time in milli seconds"}
    @Return {value:"boolean true if the timeout was set. boolean false if key does not exist or the timeout could not
 be set"}
    public native function pExpire (string key, int timeMilliSeconds)
        returns (boolean|error);

    @Description {value:"Get the time to live for a key in milliseconds"}
    @Param {value:"key:The key of which time-to-live should be obtained"}
    @Return {value:"time-to-live of the key, in milli seconds"}
    public native function pTtl (string key) returns (int|error);

    @Description {value:"Return a random key from the keyspace"}
    @Return {value:"The random key, or null when the database is empty"}
    public native function randomKey () returns (string|error);

    @Description {value:"Rename a key"}
    @Param {value:"key:The key to be renamed"}
    @Param {value:"newName:The new name of the key"}
    @Return {value:"A string with the value \"OK\" if the operation was successful"}
    public native function rename (string key, string newName) returns (string|error);

    @Description {value:"Rename a key, only if the new key does not exist"}
    @Param {value:"key:The key to be renamed"}
    @Param {value:"newName:The new name of the key"}
    @Return {value:"boolean true if key was renamed to newkey. boolean false if newkey already exists"}
    public native function renameNx (string key, string newName) returns (boolean|error);

    @Description {value:"Sort the elements in a list, set or sorted set"}
    @Param {value:"key:The key of the data typeure to be sorted"}
    @Return {value:"Sorted array containing the members of the sorted data typeure"}
    public native function sort (string key) returns (string[]|error);

    @Description {value:"Get the time to live for a key"}
    @Param {value:"key:The key of which the time to live needs to be obtained"}
    @Return {value:"Time to live in seconds or a negative value in order to signal an error"}
    public native function ttl (string key) returns (int|error);

    @Description {value:"Determine the type stored at key"}
    @Param {value:"key:The key of which the type needs to be obtained"}
    @Return {value:"Time to live in seconds or a negative value in order to signal an error"}
    public native function redisType (string key) returns (string|error);

    //Connection commands

    @Description {value:"Authenticate to the server"}
    @Param {value:"password:The password"}
    @Return {value:"A string with the value \"OK\" if the operation was successful"}
    public native function auth (string password) returns (string|error);

    @Description {value:"Echo the given string"}
    @Param {value:"message:The message to be echo-ed"}
    @Return {value:"The message itself if the operation was successful"}
    public native function echo (string message) returns (string|error);

    @Description {value:"Ping the server"}
    @Return {value:"A string with the value \"PONG\" if the operation was successful"}
    public native function ping () returns (string|error);

    @Description {value:"Close the connection"}
    @Return {value:"A string with the value \"OK\""}
    public native function quit () returns (string|error);

    @Description {value:"Close the connection pool"}
    public native function close ();
};


