.class public final enum Lcom/spotify/mobile/android/devtools/MethodTraceScope;
.super Ljava/lang/Enum;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/spotify/mobile/android/devtools/MethodTraceScope;",
        ">;"
    }
.end annotation


# static fields
.field public static final enum a:Lcom/spotify/mobile/android/devtools/MethodTraceScope;

.field public static final enum b:Lcom/spotify/mobile/android/devtools/MethodTraceScope;

.field private static final synthetic c:[Lcom/spotify/mobile/android/devtools/MethodTraceScope;


# instance fields
.field private final mEnabled:Z


# direct methods
.method static constructor <clinit>()V
    .registers 4

    const/4 v3, 0x1

    const/4 v2, 0x0

    new-instance v0, Lcom/spotify/mobile/android/devtools/MethodTraceScope;

    const-string v1, "CREATE_SPOTIFY_APPLICATION"

    invoke-direct {v0, v1, v2, v2}, Lcom/spotify/mobile/android/devtools/MethodTraceScope;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->a:Lcom/spotify/mobile/android/devtools/MethodTraceScope;

    new-instance v0, Lcom/spotify/mobile/android/devtools/MethodTraceScope;

    const-string v1, "MAIN_ACTIVITY_ON_CREATE"

    invoke-direct {v0, v1, v3, v2}, Lcom/spotify/mobile/android/devtools/MethodTraceScope;-><init>(Ljava/lang/String;IB)V

    sput-object v0, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->b:Lcom/spotify/mobile/android/devtools/MethodTraceScope;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/spotify/mobile/android/devtools/MethodTraceScope;

    sget-object v1, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->a:Lcom/spotify/mobile/android/devtools/MethodTraceScope;

    aput-object v1, v0, v2

    sget-object v1, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->b:Lcom/spotify/mobile/android/devtools/MethodTraceScope;

    aput-object v1, v0, v3

    sput-object v0, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->c:[Lcom/spotify/mobile/android/devtools/MethodTraceScope;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->mEnabled:Z

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IB)V
    .registers 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(BBB)V"
        }
    .end annotation

    invoke-direct {p0, p1, p2}, Lcom/spotify/mobile/android/devtools/MethodTraceScope;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/spotify/mobile/android/devtools/MethodTraceScope;
    .registers 2

    const-class v0, Lcom/spotify/mobile/android/devtools/MethodTraceScope;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/spotify/mobile/android/devtools/MethodTraceScope;

    return-object v0
.end method

.method public static values()[Lcom/spotify/mobile/android/devtools/MethodTraceScope;
    .registers 1

    sget-object v0, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->c:[Lcom/spotify/mobile/android/devtools/MethodTraceScope;

    invoke-virtual {v0}, [Lcom/spotify/mobile/android/devtools/MethodTraceScope;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/spotify/mobile/android/devtools/MethodTraceScope;

    return-object v0
.end method


# virtual methods
.method public final a()Z
    .registers 2

    iget-boolean v0, p0, Lcom/spotify/mobile/android/devtools/MethodTraceScope;->mEnabled:Z

    return v0
.end method
