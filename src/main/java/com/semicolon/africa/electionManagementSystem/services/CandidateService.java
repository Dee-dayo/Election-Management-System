package com.semicolon.africa.electionManagementSystem.services;

import com.semicolon.africa.electionManagementSystem.dtos.requests.RegisterCandidateRequest;
import com.semicolon.africa.electionManagementSystem.dtos.responses.RegisterCandidateResponse;
import com.semicolon.africa.electionManagementSystem.models.Candidate;

public interface CandidateService {

    RegisterCandidateResponse registerCandidateWith(RegisterCandidateRequest request);

    Long getNumberOfCandidates();

    Candidate findCandidateBy(Long candidateId);
}
