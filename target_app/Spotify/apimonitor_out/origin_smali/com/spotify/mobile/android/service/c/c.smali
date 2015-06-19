.class public final Lcom/spotify/mobile/android/service/c/c;
.super Ljava/lang/Object;
.source "SourceFile"


# instance fields
.field public final a:Lcom/spotify/mobile/android/service/c/g;

.field public final b:Landroid/net/Uri;

.field public final c:Z

.field public final d:Z

.field public final e:Z

.field public final f:Z

.field public final g:Lcom/spotify/mobile/android/g/a;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/spotify/mobile/android/g/a",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field public final h:Z

.field public final i:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/net/Uri;ZZZZLjava/lang/String;ZZZ)V
    .registers 21

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    new-instance v1, Lcom/spotify/mobile/android/service/c/g;

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move-object v5, p4

    move/from16 v6, p12

    invoke-direct/range {v1 .. v6}, Lcom/spotify/mobile/android/service/c/g;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z)V

    iput-object v1, p0, Lcom/spotify/mobile/android/service/c/c;->a:Lcom/spotify/mobile/android/service/c/g;

    invoke-static {p5}, Lcom/google/common/base/i;->a(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/Uri;

    iput-object v1, p0, Lcom/spotify/mobile/android/service/c/c;->b:Landroid/net/Uri;

    iput-boolean p6, p0, Lcom/spotify/mobile/android/service/c/c;->c:Z

    iput-boolean p7, p0, Lcom/spotify/mobile/android/service/c/c;->d:Z

    iput-boolean p8, p0, Lcom/spotify/mobile/android/service/c/c;->e:Z

    move/from16 v0, p9

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/c/c;->f:Z

    invoke-static/range {p10 .. p10}, Lcom/spotify/mobile/android/g/a;->b(Ljava/lang/Object;)Lcom/spotify/mobile/android/g/a;

    move-result-object v1

    iput-object v1, p0, Lcom/spotify/mobile/android/service/c/c;->g:Lcom/spotify/mobile/android/g/a;

    move/from16 v0, p11

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/c/c;->h:Z

    move/from16 v0, p13

    iput-boolean v0, p0, Lcom/spotify/mobile/android/service/c/c;->i:Z

    return-void
.end method


# virtual methods
.method public final equals(Ljava/lang/Object;)Z
    .registers 6

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v0

    :cond_5
    if-eqz p1, :cond_11

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_13

    :cond_11
    move v0, v1

    goto :goto_4

    :cond_13
    check-cast p1, Lcom/spotify/mobile/android/service/c/c;

    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/c/c;->i:Z

    iget-boolean v3, p1, Lcom/spotify/mobile/android/service/c/c;->i:Z

    if-eq v2, v3, :cond_1d

    move v0, v1

    goto :goto_4

    :cond_1d
    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/c/c;->h:Z

    iget-boolean v3, p1, Lcom/spotify/mobile/android/service/c/c;->h:Z

    if-eq v2, v3, :cond_25

    move v0, v1

    goto :goto_4

    :cond_25
    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/c/c;->f:Z

    iget-boolean v3, p1, Lcom/spotify/mobile/android/service/c/c;->f:Z

    if-eq v2, v3, :cond_2d

    move v0, v1

    goto :goto_4

    :cond_2d
    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/c/c;->c:Z

    iget-boolean v3, p1, Lcom/spotify/mobile/android/service/c/c;->c:Z

    if-eq v2, v3, :cond_35

    move v0, v1

    goto :goto_4

    :cond_35
    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/c/c;->e:Z

    iget-boolean v3, p1, Lcom/spotify/mobile/android/service/c/c;->e:Z

    if-eq v2, v3, :cond_3d

    move v0, v1

    goto :goto_4

    :cond_3d
    iget-boolean v2, p0, Lcom/spotify/mobile/android/service/c/c;->d:Z

    iget-boolean v3, p1, Lcom/spotify/mobile/android/service/c/c;->d:Z

    if-eq v2, v3, :cond_45

    move v0, v1

    goto :goto_4

    :cond_45
    iget-object v2, p0, Lcom/spotify/mobile/android/service/c/c;->g:Lcom/spotify/mobile/android/g/a;

    iget-object v3, p1, Lcom/spotify/mobile/android/service/c/c;->g:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v2, v3}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_51

    move v0, v1

    goto :goto_4

    :cond_51
    iget-object v2, p0, Lcom/spotify/mobile/android/service/c/c;->b:Landroid/net/Uri;

    iget-object v3, p1, Lcom/spotify/mobile/android/service/c/c;->b:Landroid/net/Uri;

    invoke-virtual {v2, v3}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_5d

    move v0, v1

    goto :goto_4

    :cond_5d
    iget-object v2, p0, Lcom/spotify/mobile/android/service/c/c;->a:Lcom/spotify/mobile/android/service/c/g;

    iget-object v3, p1, Lcom/spotify/mobile/android/service/c/c;->a:Lcom/spotify/mobile/android/service/c/g;

    invoke-virtual {v2, v3}, Lcom/spotify/mobile/android/service/c/g;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    move v0, v1

    goto :goto_4
.end method

.method public final hashCode()I
    .registers 5

    const/4 v1, 0x1

    const/4 v2, 0x0

    iget-object v0, p0, Lcom/spotify/mobile/android/service/c/c;->a:Lcom/spotify/mobile/android/service/c/g;

    invoke-virtual {v0}, Lcom/spotify/mobile/android/service/c/g;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/spotify/mobile/android/service/c/c;->b:Landroid/net/Uri;

    invoke-virtual {v3}, Landroid/net/Uri;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/c/c;->c:Z

    if-eqz v0, :cond_4a

    move v0, v1

    :goto_18
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/c/c;->d:Z

    if-eqz v0, :cond_4c

    move v0, v1

    :goto_20
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/c/c;->e:Z

    if-eqz v0, :cond_4e

    move v0, v1

    :goto_28
    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/c/c;->f:Z

    if-eqz v0, :cond_50

    move v0, v1

    :goto_30
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-object v3, p0, Lcom/spotify/mobile/android/service/c/c;->g:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v3}, Ljava/lang/Object;->hashCode()I

    move-result v3

    add-int/2addr v0, v3

    mul-int/lit8 v3, v0, 0x1f

    iget-boolean v0, p0, Lcom/spotify/mobile/android/service/c/c;->h:Z

    if-eqz v0, :cond_52

    move v0, v1

    :goto_41
    add-int/2addr v0, v3

    mul-int/lit8 v0, v0, 0x1f

    iget-boolean v3, p0, Lcom/spotify/mobile/android/service/c/c;->i:Z

    if-eqz v3, :cond_54

    :goto_48
    add-int/2addr v0, v1

    return v0

    :cond_4a
    move v0, v2

    goto :goto_18

    :cond_4c
    move v0, v2

    goto :goto_20

    :cond_4e
    move v0, v2

    goto :goto_28

    :cond_50
    move v0, v2

    goto :goto_30

    :cond_52
    move v0, v2

    goto :goto_41

    :cond_54
    move v1, v2

    goto :goto_48
.end method

.method public final toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "NotificationState{trackInfo="

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/spotify/mobile/android/service/c/c;->a:Lcom/spotify/mobile/android/service/c/g;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", imageUri="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/c/c;->b:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPaused="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spotify/mobile/android/service/c/c;->c:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isRadio="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spotify/mobile/android/service/c/c;->d:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isPrevEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spotify/mobile/android/service/c/c;->e:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isNextEnabled="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spotify/mobile/android/service/c/c;->f:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", radioThumbState="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/spotify/mobile/android/service/c/c;->g:Lcom/spotify/mobile/android/g/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isAdPlaying="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spotify/mobile/android/service/c/c;->h:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ", isVideoAd="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-boolean v1, p0, Lcom/spotify/mobile/android/service/c/c;->i:Z

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
