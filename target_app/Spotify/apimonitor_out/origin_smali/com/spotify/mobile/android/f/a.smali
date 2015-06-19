.class public abstract Lcom/spotify/mobile/android/f/a;
.super Ljava/lang/Object;
.source "SourceFile"


# static fields
.field public static final a:Ljava/lang/String;

.field protected static b:Z

.field private static c:Lcom/spotify/mobile/android/f/a;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    const-class v0, Lcom/spotify/mobile/android/f/a;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/f/a;->a:Ljava/lang/String;

    invoke-static {}, Lcom/spotify/mobile/android/f/a;->b()Lcom/spotify/mobile/android/f/a;

    move-result-object v0

    sput-object v0, Lcom/spotify/mobile/android/f/a;->c:Lcom/spotify/mobile/android/f/a;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Z
    .registers 1

    sget-boolean v0, Lcom/spotify/mobile/android/f/a;->b:Z

    return v0
.end method

.method private static b()Lcom/spotify/mobile/android/f/a;
    .registers 4

    :try_start_0
    const-string v0, "com.spotify.mobile.android.ta.BeanRemoteImpl"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->newInstance()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/f/a;
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_c} :catch_d

    :goto_c
    return-object v0

    :catch_d
    move-exception v0

    const-string v1, "Could not create instance of BeanRemoteImpl class: %s"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    aput-object v0, v2, v3

    invoke-static {v1, v2}, Lcom/spotify/mobile/android/util/br;->d(Ljava/lang/String;[Ljava/lang/Object;)V

    const/4 v0, 0x0

    goto :goto_c
.end method
