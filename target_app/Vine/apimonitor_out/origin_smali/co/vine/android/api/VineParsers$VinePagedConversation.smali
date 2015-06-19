.class public Lco/vine/android/api/VineParsers$VinePagedConversation;
.super Lco/vine/android/api/VinePagedData;
.source "VineParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/api/VineParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VinePagedConversation"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/vine/android/api/VinePagedData",
        "<",
        "Lco/vine/android/api/VinePrivateMessage;",
        ">;"
    }
.end annotation


# instance fields
.field public lastMessage:J

.field public lastMessageRead:J

.field public networkType:I

.field public unreadMessageCount:J


# direct methods
.method public constructor <init>()V
    .registers 3

    const-wide/16 v0, 0x0

    invoke-direct {p0}, Lco/vine/android/api/VinePagedData;-><init>()V

    iput-wide v0, p0, Lco/vine/android/api/VineParsers$VinePagedConversation;->unreadMessageCount:J

    iput-wide v0, p0, Lco/vine/android/api/VineParsers$VinePagedConversation;->lastMessageRead:J

    iput-wide v0, p0, Lco/vine/android/api/VineParsers$VinePagedConversation;->lastMessage:J

    return-void
.end method
