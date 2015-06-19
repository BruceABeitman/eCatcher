.class public Lco/vine/android/api/VineParsers$VinePagedInbox;
.super Lco/vine/android/api/VinePagedData;
.source "VineParsers.java"
.field public participants:Ljava/util/ArrayList;
.method public constructor <init>()V
.registers 2
invoke-direct {p0}, Lco/vine/android/api/VinePagedData;-><init>()V
new-instance v0, Ljava/util/ArrayList;
invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V
iput-object v0, p0, Lco/vine/android/api/VineParsers$VinePagedInbox;->participants:Ljava/util/ArrayList;
return-void
.end method