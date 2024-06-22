package com.semicolon.africa.electionManagementSystem.utils.validations;

import com.semicolon.africa.electionManagementSystem.dtos.requests.RegisterCandidateRequest;
import com.semicolon.africa.electionManagementSystem.exceptions.ElectionManagementSystemException;
import com.semicolon.africa.electionManagementSystem.exceptions.NoVoterFoundException;
import com.semicolon.africa.electionManagementSystem.models.Candidate;

public class Validations {

    public static void verifyEmailAddress(String email) {
        String emailRegex = "[a-z0-9!#$%&'+/=?^_`{|}~-]?+(?:\\.[a-z0-9!#$%&'+/=?^_`{|}~-]+)@(?:[a-z0-9](?:[a-z0-9-][a-z0-9])?\\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?";
        String emailRegex2 = "([a-z]\\.)?[a-z]+@(semicolon|enum|learnspace|native.semicolon).africa";

        if (!email.matches(emailRegex) || !email.matches(emailRegex2))throw new ElectionManagementSystemException("Invalid email address");

    }
    public static void validateCandidate(RegisterCandidateRequest request, Candidate candidate) {
        if (candidate.getPositionContested().equals(request.getPositionContested())
                && candidate.getPartyAffiliation().equals(request.getPartyAffiliation())) {
            throw new NoVoterFoundException("candidate under " + request.getPartyAffiliation() + " exists for " + request.getPositionContested());
        }
    }

}