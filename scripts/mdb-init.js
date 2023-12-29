// MongoDB script for initialization

// Use the desired database
db = db.getSiblingDB(process.env.MDB_DATABASE);

// Check if the collection 'mycollection' exists
if (!db.getCollectionNames().includes(process.env.MDB_COLLECTION_STARTER)) {
    // Create the collection
    db.createCollection(process.env.MDB_COLLECTION_STARTER);

    // Insert initial data
    db.mycollection.insert([
        { name: 'Item 1', value: 100 },
        { name: 'Item 2', value: 200 },
        // Add more initial data as needed
    ]);

    print('Data inserted successfully.');
} else {
    print('Collection already exists. Skipping data insertion.');
}
