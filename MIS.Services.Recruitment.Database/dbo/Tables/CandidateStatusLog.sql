CREATE TABLE [dbo].[CandidateStatusLog] (
    [Id]          INT           IDENTITY (1, 1) NOT NULL,
    [ActedById]   INT           NOT NULL,
    [Date]        DATE          NOT NULL,
    [Notes]       VARCHAR (255) NOT NULL,
    [StatusId]    INT           NOT NULL,
    [CandidateId] INT           NOT NULL,
    PRIMARY KEY CLUSTERED ([Id] ASC),
    FOREIGN KEY ([CandidateId]) REFERENCES [dbo].[Candidate] ([Id]),
    FOREIGN KEY ([StatusId]) REFERENCES [dbo].[Status] ([Id])
);

