.class public Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;
.super Lcom/spotify/mobile/android/spotlets/browse/model/Playable;
.source "SourceFile"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/String;

.field private c:Ljava/lang/String;

.field private d:Ljava/lang/String;

.field private e:I


# direct methods
.method static constructor <clinit>()V
    .registers 1

    new-instance v0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist$1;

    invoke-direct {v0}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist$1;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)V
    .registers 8

    invoke-direct {p0, p4}, Lcom/spotify/mobile/android/spotlets/browse/model/Playable;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->b:Ljava/lang/String;

    iput-object p3, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->c:Ljava/lang/String;

    if-eqz p5, :cond_1e

    const-string v0, "https://d3rt1990lpmkn.cloudfront.net/300/"

    invoke-virtual {p5, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1e

    const/16 v0, 0x29

    invoke-virtual {p5, v0}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->d:Ljava/lang/String;

    :goto_1b
    iput p6, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->e:I

    return-void

    :cond_1e
    iput-object p5, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->d:Ljava/lang/String;

    goto :goto_1b
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->c:Ljava/lang/String;

    return-object v0
.end method

.method public describeContents()I
    .registers 2

    const/4 v0, 0x0

    return v0
.end method

.method public final f()Ljava/lang/String;
    .registers 3

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->d:Ljava/lang/String;

    const-string v1, "http"

    invoke-virtual {v0, v1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_d

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->d:Ljava/lang/String;

    :goto_c
    return-object v0

    :cond_d
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "https://d3rt1990lpmkn.cloudfront.net/300/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->d:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_c
.end method

.method public final g()I
    .registers 2

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->e:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .registers 4

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->a:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->b:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->c:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget-object v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->d:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    iget v0, p0, Lcom/spotify/mobile/android/spotlets/browse/model/Playlist;->e:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    return-void
.end method
