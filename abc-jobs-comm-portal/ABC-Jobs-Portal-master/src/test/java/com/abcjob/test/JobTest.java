package com.abcjob.test;

import static org.mockito.Mockito.*;

import org.junit.Before;
import org.junit.Test;
import org.junit.runner.RunWith;
import org.mockito.InjectMocks;
import org.mockito.Mock;
import org.mockito.MockitoAnnotations;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.abcjob.admin.AdminService;
import com.abcjob.config.JpaConfig;
import com.abcjob.config.WebConfig;
import com.abcjob.dao.JobRepository;
import com.abcjob.entity.Job;

@RunWith(SpringRunner.class)
@ContextConfiguration(classes = {WebConfig.class, JpaConfig.class})
public class JobTest {

    @Mock
    private JobRepository jobRepository;

    @InjectMocks
    private AdminService adminService;

    @SuppressWarnings("deprecation")
	@Before
    public void setUp() {
        MockitoAnnotations.initMocks(this);
    }

    @Test
    public void testPostJob() {
        Job job = new Job("Intermediate", "Full-time", "Software Developer", "Job description...", "ABC Company", "images/company/abc.png");

        adminService.postJob(job);

        verify(jobRepository, times(1)).save(job);
    }
}
