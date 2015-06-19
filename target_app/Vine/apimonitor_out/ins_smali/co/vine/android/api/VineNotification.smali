.class public Lco/vine/android/api/VineNotification;
.super Ljava/lang/Object;
.source "VineNotification.java"
.field public comment:Ljava/lang/String;
.field public createdAt:J
.field public entities:Ljava/util/ArrayList;
.field public notificationId:J
.method public constructor <init>()V
.registers 4
const-wide/16 v1, 0x0
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-wide v1, p0, Lco/vine/android/api/VineNotification;->createdAt:J
const/4 v0, 0x0
iput-object v0, p0, Lco/vine/android/api/VineNotification;->comment:Ljava/lang/String;
iput-wide v1, p0, Lco/vine/android/api/VineNotification;->notificationId:J
return-void
.end method