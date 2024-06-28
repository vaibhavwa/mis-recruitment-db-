/*
Post-Deployment Script Template							
--------------------------------------------------------------------------------------
 This file contains SQL statements that will be appended to the build script.		
 Use SQLCMD syntax to include a file in the post-deployment script.			
 Example:      :r .\myfile.sql								
 Use SQLCMD syntax to reference a variable in the post-deployment script.		
 Example:      :setvar TableName MyTable							
               SELECT * FROM [$(TableName)]					
--------------------------------------------------------------------------------------
*/
IF (SELECT COUNT(*) from [dbo].[Status]) = 0
BEGIN
	INSERT [dbo].[Status] ([Name]) VALUES ('New')
	INSERT [dbo].[Status] ([Name]) VALUES ('Interview Scheduled')
	INSERT [dbo].[Status] ([Name]) VALUES ('Interview in Progress')
	INSERT [dbo].[Status] ([Name]) VALUES ('Offer Given')
	INSERT [dbo].[Status] ([Name]) VALUES ('Rejected')
    INSERT [dbo].[Status] ([Name]) VALUES ('On Hold')
	INSERT [dbo].[Status] ([Name]) VALUES ('Not Responding')
	INSERT [dbo].[Status] ([Name]) VALUES ('Offer Rejected')
	INSERT [dbo].[Status] ([Name]) VALUES ('Joined')
END

IF (SELECT COUNT(*) from [dbo].[Candidate]) = 0
BEGIN
	INSERT [dbo].[Candidate] ([FirstName],[LastName],[DateOfJoining],[Dob],[Email],[Ctc],[DesignationId],[StatusId],[Gender]) VALUES ('Shweta','Todkar','2023-01-01','1997-03-03','shweta@gmail.com','500000',1,1,'Female')
	INSERT [dbo].[Candidate] ([FirstName],[LastName],[DateOfJoining],[Dob],[Email],[Ctc],[DesignationId],[StatusId],[Gender]) VALUES ('Soma','Das','2023-01-01','1996-02-02','soma@gmail.com','600000',1,1,'Female')
	INSERT [dbo].[Candidate] ([FirstName],[LastName],[DateOfJoining],[Dob],[Email],[Ctc],[DesignationId],[StatusId],[Gender]) VALUES ('Shivam','Jagtap','2023-02-02','1997-05-05','shivam@gmail.com','500000',1,1,'Male')
END

IF (SELECT COUNT(*) from [dbo].[CandidateStatusLog]) = 0
BEGIN
    INSERT [dbo].[CandidateStatusLog] ([ActedById],[Date],[Notes],[CandidateId],[StatusId]) VALUES (1,'2023-01-01','Candi reg',1,1)
	INSERT [dbo].[CandidateStatusLog] ([ActedById],[Date],[Notes],[CandidateId],[StatusId]) VALUES (2,'2023-01-01','Candi reg',2,1)
	INSERT [dbo].[CandidateStatusLog] ([ActedById],[Date],[Notes],[CandidateId],[StatusId]) VALUES (3,'2023-02-02','Candi reg',3,1)
END