CREATE TABLE [dbo].[Candidate] (
    [Id]            INT           IDENTITY (1, 1) NOT NULL,
    [FirstName]     VARCHAR (255) NOT NULL,
    [LastName]      VARCHAR (255) NOT NULL,
    [DateOfJoining] DATE          NULL,
    [Dob]           DATE          NOT NULL,
    [Email]         VARCHAR (255) NOT NULL,
    [Ctc]           VARCHAR (255) NULL,
    [DesignationId] INT           NULL,
    [StatusId]      INT           NOT NULL,
    [Gender]        VARCHAR (50)  NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([StatusId]) REFERENCES [dbo].[Status] ([Id])
);

