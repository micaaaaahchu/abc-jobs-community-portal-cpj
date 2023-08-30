package com.abcjob.test;

import static org.junit.Assert.assertNotNull;

import org.junit.Test;
import org.junit.jupiter.api.BeforeEach;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.context.annotation.AnnotationConfigApplicationContext;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;
import org.springframework.transaction.annotation.Transactional;

import com.abcjob.config.JpaConfig;
import com.abcjob.config.WebConfig;
import com.abcjob.dao.ApplyJobRepository;
import com.abcjob.dao.JobRepository;
import com.abcjob.dao.UserProfileRepository;
import com.abcjob.entity.ApplyJob;
import com.abcjob.entity.Job;
import com.abcjob.entity.UserProfile;

@RunWith(SpringRunner.class)
@ContextConfiguration(classes = {WebConfig.class, JpaConfig.class})
public class ApplyJobTest {

    private AnnotationConfigApplicationContext context;

    @Autowired
    private ApplyJobRepository applyJobRepository;

    @Autowired
    private UserProfileRepository userProfileRepository;

    @Autowired
    private JobRepository jobRepository;

    @BeforeEach
    public void setup() {
        context = new AnnotationConfigApplicationContext(WebConfig.class, JpaConfig.class);
        applyJobRepository = context.getBean(ApplyJobRepository.class);
        userProfileRepository = context.getBean(UserProfileRepository.class);
        jobRepository = context.getBean(JobRepository.class);
    }

    @Test
    @Transactional
    public void testApplyJob() {
        UserProfile userProfile = new UserProfile(null, "Test John", "Doe", "USA", 
                "California", null, "user-default.png", "banner.jpg", "About me");
        userProfileRepository.save(userProfile);

        Job job = new Job("Entry-level", "Part-time", "Data Analyst",
                "Analyze data to extract valuable insights.", "DataCo", "dataco.png");
        jobRepository.save(job);

        ApplyJob applyJob = new ApplyJob(userProfile, job, "Pending");
        applyJobRepository.save(applyJob);
        assertNotNull(applyJob.getId_apply_job());
    }
}
