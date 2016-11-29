package iastate.vethelper.repo;

import iastate.vethelper.entity.Patient;
import org.springframework.data.repository.CrudRepository;
import org.springframework.stereotype.Repository;

@Repository
public interface PatientRepo extends CrudRepository<Patient, Long> {
    Patient findByPatientName(String patientName);
    Patient findByMmr(String MMR);
    Patient findByOwnerName(String ownerName);
}
