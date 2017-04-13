CREATE TABLE poll(
    pollId INTEGER DEFAULT 1,
    question VARCHAR(200) NOT NULL,
    votes VARCHAR(50) NOT NULL,
    PRIMARY KEY (pollId)
);

CREATE TABLE poll_choices(
    choiceId INTEGER NOT NULL GENERATED ALWAYS AS IDENTITY (START WITH 1, INCREMENT BY 1),
    pollId INTEGER NOT NULL,
    choice VARCHAR(100) NOT NULL,
    PRIMARY KEY(choiceId),
    CONSTRAINT Fk_Poll FOREIGN KEY(pollId) REFERENCES poll(pollId)
);

