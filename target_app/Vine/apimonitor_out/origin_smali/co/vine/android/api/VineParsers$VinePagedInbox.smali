.class public Lco/vine/android/api/VineParsers$VinePagedInbox;
.super Lco/vine/android/api/VinePagedData;
.source "VineParsers.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lco/vine/android/api/VineParsers;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "VinePagedInbox"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lco/vine/android/api/VinePagedData",
        "<",
        "Lco/vine/android/api/VineConversation;",
        ">;"
    }
.end annotation


# instance fields
.field public participants:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .registers 2

    invoke-direct {p0}, Lco/vine/android/api/VinePagedData;-><init>()V

    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lco/vine/android/api/VineParsers$VinePagedInbox;->participants:Ljava/util/ArrayList;

    return-void
.end method
