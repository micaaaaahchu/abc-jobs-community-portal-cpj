package com.abcjob.test;

import static org.junit.Assert.*;

import org.junit.Test;
import org.junit.runner.RunWith;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.test.context.ContextConfiguration;
import org.springframework.test.context.junit4.SpringRunner;

import com.abcjob.config.JpaConfig;
import com.abcjob.config.WebConfig;
import com.abcjob.dao.ThreadsRepository;
import com.abcjob.dao.UserProfileRepository;
import com.abcjob.entity.Threads;
import com.abcjob.entity.UserProfile;

@RunWith(SpringRunner.class)
@ContextConfiguration(classes = {WebConfig.class, JpaConfig.class})
public class ThreadsTest {

    @Autowired
    private ThreadsRepository threadsRepository;

    @Autowired
    private UserProfileRepository userProfileRepository;

    @Test
    public void testPostThread() {
        UserProfile userProfile = new UserProfile(null, "Jane Test", "Smith", "USA", 
                "California", null, "user-default.png", "banner.jpg", "About me");
        userProfileRepository.save(userProfile);

        Threads thread = new Threads(userProfile, "Discussion on AI", "Let's talk about artificial intelligence.", null);
        threadsRepository.save(thread);
        assertNotNull(thread.getId_thread());
    }

}
