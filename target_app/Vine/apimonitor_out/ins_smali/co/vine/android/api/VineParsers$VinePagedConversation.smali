.class public Lco/vine/android/api/VineParsers$VinePagedConversation;
.super Lco/vine/android/api/VinePagedData;
.source "VineParsers.java"
.field public lastMessage:J
.field public lastMessageRead:J
.field public networkType:I
.field public unreadMessageCount:J
.method public constructor <init>()V
.registers 3
const-wide/16 v0, 0x0
invoke-direct {p0}, Lco/vine/android/api/VinePagedData;-><init>()V
iput-wide v0, p0, Lco/vine/android/api/VineParsers$VinePagedConversation;->unreadMessageCount:J
iput-wide v0, p0, Lco/vine/android/api/VineParsers$VinePagedConversation;->lastMessageRead:J
iput-wide v0, p0, Lco/vine/android/api/VineParsers$VinePagedConversation;->lastMessage:J
return-void
.end method