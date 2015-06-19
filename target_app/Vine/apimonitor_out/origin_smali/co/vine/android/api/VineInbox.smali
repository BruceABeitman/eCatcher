.class public Lco/vine/android/api/VineInbox;
.super Ljava/lang/Object;
.source "VineInbox.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lco/vine/android/api/VineInbox;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public conversations:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineConversation;",
            ">;"
        }
    .end annotation
.end field

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
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lco/vine/android/api/VineInbox$1;

    invoke-direct {v0}, Lco/vine/android/api/VineInbox$1;-><init>()V

    sput-object v0, Lco/vine/android/api/VineInbox;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .registers 4

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VineInbox;->conversations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readArrayList(Ljava/lang/ClassLoader;)Ljava/util/ArrayList;

    move-result-object v1

    iput-object v1, p0, Lco/vine/android/api/VineInbox;->participants:Ljava/util/ArrayList;

    return-void
.end method

.method public constructor <init>(Ljava/util/ArrayList;Ljava/util/ArrayList;)V
    .registers 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineConversation;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Lco/vine/android/api/VineUser;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lco/vine/android/api/VineInbox;->conversations:Ljava/util/ArrayList;

    iput-object p2, p0, Lco/vine/android/api/VineInbox;->participants:Ljava/util/ArrayList;

    return-void
.end method


# virtual methods
.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    if-eq v3, v4, :cond_13

    :cond_11
    move v1, v2

    goto :goto_4

    :cond_13
    move-object v0, p1

    check-cast v0, Lco/vine/android/api/VineInbox;

    iget-object v3, p0, Lco/vine/android/api/VineInbox;->conversations:Ljava/util/ArrayList;

    if-eqz v3, :cond_26

    iget-object v3, p0, Lco/vine/android/api/VineInbox;->conversations:Ljava/util/ArrayList;

    iget-object v4, v0, Lco/vine/android/api/VineInbox;->conversations:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_2a

    :cond_24
    move v1, v2

    goto :goto_4

    :cond_26
    iget-object v3, v0, Lco/vine/android/api/VineInbox;->conversations:Ljava/util/ArrayList;

    if-nez v3, :cond_24

    :cond_2a
    iget-object v3, p0, Lco/vine/android/api/VineInbox;->participants:Ljava/util/ArrayList;

    if-eqz v3, :cond_3a

    iget-object v3, p0, Lco/vine/android/api/VineInbox;->participants:Ljava/util/ArrayList;

    iget-object v4, v0, Lco/vine/android/api/VineInbox;->participants:Ljava/util/ArrayList;

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_38
    move v1, v2

    goto :goto_4

    :cond_3a
    iget-object v3, v0, Lco/vine/android/api/VineInbox;->participants:Ljava/util/ArrayList;

    if-eqz v3, :cond_4

    goto :goto_38
.end method

.method public hashCode()I
    .registers 5

    const/4 v1, 0x0

    iget-object v2, p0, Lco/vine/android/api/VineInbox;->conversations:Ljava/util/ArrayList;

    if-eqz v2, :cond_1a

    iget-object v2, p0, Lco/vine/android/api/VineInbox;->conversations:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->hashCode()I

    move-result v0

    :goto_b
    mul-int/lit8 v2, v0, 0x1f

    iget-object v3, p0, Lco/vine/android/api/VineInbox;->participants:Ljava/util/ArrayList;

    if-eqz v3, :cond_17

    iget-object v1, p0, Lco/vine/android/api/VineInbox;->participants:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->hashCode()I

    move-result v1

    :cond_17
    add-int v0, v2, v1

    return v0

    :cond_1a
    move v0, v1

    goto :goto_b
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lco/vine/android/api/VineInbox;->conversations:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    iget-object v0, p0, Lco/vine/android/api/VineInbox;->participants:Ljava/util/ArrayList;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeSerializable(Ljava/io/Serializable;)V

    return-void
.end method
