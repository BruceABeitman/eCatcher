.class public final Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Landroid/net/Uri;

.field private static b:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/spotify/music/internal/provider/SpotifyProvider;->a:Landroid/net/Uri;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/offlinesync"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->a:Landroid/net/Uri;

    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b:Ljava/util/HashMap;

    const-string v1, "no"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b:Ljava/util/HashMap;

    const-string v1, "waiting"

    const/4 v2, 0x4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b:Ljava/util/HashMap;

    const-string v1, "waitingOfflineMode"

    const/4 v2, 0x6

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b:Ljava/util/HashMap;

    const-string v1, "waitingSyncNotAllowed"

    const/4 v2, 0x7

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b:Ljava/util/HashMap;

    const-string v1, "waitingNoConnection"

    const/4 v2, 0x5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b:Ljava/util/HashMap;

    const-string v1, "downloading"

    const/4 v2, 0x3

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b:Ljava/util/HashMap;

    const-string v1, "yes"

    const/4 v2, 0x2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b:Ljava/util/HashMap;

    const-string v1, "error"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b:Ljava/util/HashMap;

    const-string v1, "expired"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b:Ljava/util/HashMap;

    const-string v1, "exceeded"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b:Ljava/util/HashMap;

    const-string v1, "resync"

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method

.method public static a(Ljava/lang/String;)I
    .registers 2

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->b:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    if-nez v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_b
.end method

.method public static final a(I)Z
    .registers 2

    const/4 v0, 0x1

    if-ne p0, v0, :cond_4

    :goto_3
    return v0

    :cond_4
    const/4 v0, 0x0

    goto :goto_3
.end method

.method public static final a(II)Z
    .registers 3

    invoke-static {p0}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->e(I)Z

    move-result v0

    if-eqz v0, :cond_c

    const/16 v0, 0x64

    if-ge p1, v0, :cond_c

    const/4 v0, 0x1

    :goto_b
    return v0

    :cond_c
    const/4 v0, 0x0

    goto :goto_b
.end method

.method public static final b(I)Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;
    .registers 3

    invoke-static {p0}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->e(I)Z

    move-result v0

    if-nez v0, :cond_9

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->a:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;

    :goto_8
    return-object v0

    :cond_9
    packed-switch p0, :pswitch_data_34

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Offline state "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " is not a waiting state."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/spotify/mobile/android/util/Assertion;->a(Ljava/lang/String;)V

    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->a:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;

    goto :goto_8

    :pswitch_27
    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->b:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;

    goto :goto_8

    :pswitch_2a
    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->c:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;

    goto :goto_8

    :pswitch_2d
    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->d:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;

    goto :goto_8

    :pswitch_30
    sget-object v0, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;->e:Lcom/spotify/mobile/android/provider/Metadata$OfflineSync$WaitReason;

    goto :goto_8

    nop

    :pswitch_data_34
    .packed-switch 0x4
        :pswitch_27
        :pswitch_2a
        :pswitch_2d
        :pswitch_30
    .end packed-switch
.end method

.method public static final b(II)Z
    .registers 3

    const/4 v0, 0x2

    if-eq p0, v0, :cond_d

    invoke-static {p0}, Lcom/spotify/mobile/android/provider/Metadata$OfflineSync;->e(I)Z

    move-result v0

    if-eqz v0, :cond_f

    const/16 v0, 0x64

    if-ne p1, v0, :cond_f

    :cond_d
    const/4 v0, 0x1

    :goto_e
    return v0

    :cond_f
    const/4 v0, 0x0

    goto :goto_e
.end method

.method public static final c(I)Z
    .registers 2

    const/4 v0, 0x3

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method public static final d(I)Z
    .registers 2

    const/4 v0, 0x2

    if-ne p0, v0, :cond_5

    const/4 v0, 0x1

    :goto_4
    return v0

    :cond_5
    const/4 v0, 0x0

    goto :goto_4
.end method

.method private static final e(I)Z
    .registers 2

    const/4 v0, 0x4

    if-eq p0, v0, :cond_c

    const/4 v0, 0x5

    if-eq p0, v0, :cond_c

    const/4 v0, 0x6

    if-eq p0, v0, :cond_c

    const/4 v0, 0x7

    if-ne p0, v0, :cond_e

    :cond_c
    const/4 v0, 0x1

    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method
