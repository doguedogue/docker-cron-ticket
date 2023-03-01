const { syncDB } = require("../../sync-db");



describe('Pruebas en Sync-DB', () => {
    test('debe de ejecutar el proceso 2 veces', () => { 

        syncDB();
        const times = syncDB();

        console.log('Se llamó', times);

        expect(times).toBe (2);
    }); 
});