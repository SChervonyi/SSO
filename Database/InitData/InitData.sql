GO
SET IDENTITY_INSERT [dbo].[UserProfile] ON 

INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (1, N'Master')
INSERT [dbo].[UserProfile] ([UserId], [UserName]) VALUES (2, N'Slave')
SET IDENTITY_INSERT [dbo].[UserProfile] OFF
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (1, CAST(0x0000A49600AAAFC8 AS DateTime), NULL, 1, NULL, 0, N'ABc4C9gonXBKlfnjYsjZozjGQ3gTMlbx+9rIhmsbiOh2nbLRHmq/mUv2/Yf+FbVwew==', CAST(0x0000A49600AAAFC8 AS DateTime), N'', NULL, NULL)
INSERT [dbo].[webpages_Membership] ([UserId], [CreateDate], [ConfirmationToken], [IsConfirmed], [LastPasswordFailureDate], [PasswordFailuresSinceLastSuccess], [Password], [PasswordChangedDate], [PasswordSalt], [PasswordVerificationToken], [PasswordVerificationTokenExpirationDate]) VALUES (2, CAST(0x0000A49600D8AE31 AS DateTime), NULL, 1, NULL, 0, N'AGrUgyZ1L050C3VPXPFZaTAiLyZjka13eUO/JF4RX+KxoxQ5yqKU2mcCPkBLOIF3Nw==', CAST(0x0000A49600D8AE31 AS DateTime), N'', NULL, NULL)
SET IDENTITY_INSERT [dbo].[webpages_Roles] ON 

INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (1, N'master')
INSERT [dbo].[webpages_Roles] ([RoleId], [RoleName]) VALUES (2, N'slave')
SET IDENTITY_INSERT [dbo].[webpages_Roles] OFF
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (1, 1)
INSERT [dbo].[webpages_UsersInRoles] ([UserId], [RoleId]) VALUES (2, 2)
SET ANSI_PADDING ON

GO