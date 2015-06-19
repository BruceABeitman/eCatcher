.class public Lcom/blackberry/ids/UserAuthState;
.super Ljava/lang/Object;
.source "UserAuthState.java"


# static fields
.field private static a:Lcom/blackberry/ids/UserAuthState$AuthState;


# direct methods
.method static constructor <clinit>()V
    .registers 1

    sget-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->NO_USER_ACC:Lcom/blackberry/ids/UserAuthState$AuthState;

    sput-object v0, Lcom/blackberry/ids/UserAuthState;->a:Lcom/blackberry/ids/UserAuthState$AuthState;

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static a()Lcom/blackberry/ids/UserAuthState$AuthState;
    .registers 2

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "getCurrentAuthState - Current state : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v1, Lcom/blackberry/ids/UserAuthState;->a:Lcom/blackberry/ids/UserAuthState$AuthState;

    invoke-virtual {v1}, Lcom/blackberry/ids/UserAuthState$AuthState;->name()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->d(Ljava/lang/Object;[Ljava/lang/Object;)V

    sget-object v0, Lcom/blackberry/ids/UserAuthState;->a:Lcom/blackberry/ids/UserAuthState$AuthState;

    return-object v0
.end method

.method static a(Lcom/blackberry/ids/UserAuthState$AuthState;)V
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "UserAuthState - Init with value : "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {v0, v1}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    sput-object p0, Lcom/blackberry/ids/UserAuthState;->a:Lcom/blackberry/ids/UserAuthState$AuthState;

    return-void
.end method

.method static b(Lcom/blackberry/ids/UserAuthState$AuthState;)V
    .registers 7

    const/4 v1, 0x0

    sget-object v0, Lcom/blackberry/ids/UserAuthState;->a:Lcom/blackberry/ids/UserAuthState$AuthState;

    if-eq v0, p0, :cond_71

    const/4 v0, 0x1

    sget-object v2, Lcom/blackberry/ids/UserAuthState;->a:Lcom/blackberry/ids/UserAuthState$AuthState;

    sget-object v3, Lcom/blackberry/ids/UserAuthState$AuthState;->NO_USER_ACC:Lcom/blackberry/ids/UserAuthState$AuthState;

    if-ne v2, v3, :cond_10

    sget-object v2, Lcom/blackberry/ids/UserAuthState$AuthState;->AUTHENTICATED:Lcom/blackberry/ids/UserAuthState$AuthState;

    if-ne p0, v2, :cond_1a

    :cond_10
    sget-object v2, Lcom/blackberry/ids/UserAuthState;->a:Lcom/blackberry/ids/UserAuthState$AuthState;

    sget-object v3, Lcom/blackberry/ids/UserAuthState$AuthState;->NO_LONGER_VALID:Lcom/blackberry/ids/UserAuthState$AuthState;

    if-ne v2, v3, :cond_1b

    sget-object v2, Lcom/blackberry/ids/UserAuthState$AuthState;->NOT_AUTHENTICATED:Lcom/blackberry/ids/UserAuthState$AuthState;

    if-ne p0, v2, :cond_1b

    :cond_1a
    move v0, v1

    :cond_1b
    :goto_1b
    if-eqz v0, :cond_6d

    new-instance v0, Ljava/lang/StringBuilder;

    const-string v2, "UserAuthState - setState From : "

    invoke-direct {v0, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    sget-object v2, Lcom/blackberry/ids/UserAuthState;->a:Lcom/blackberry/ids/UserAuthState$AuthState;

    invoke-virtual {v2}, Lcom/blackberry/ids/UserAuthState$AuthState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v2, " --> "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {p0}, Lcom/blackberry/ids/UserAuthState$AuthState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->t(Ljava/lang/Object;[Ljava/lang/Object;)V

    sget-object v0, Lcom/blackberry/ids/UserAuthState$AuthState;->NO_LONGER_VALID:Lcom/blackberry/ids/UserAuthState$AuthState;

    if-ne p0, v0, :cond_60

    const-string v0, "Clearing req token - NO_LONGER_VALID"

    new-array v2, v1, [Ljava/lang/Object;

    invoke-static {v0, v2}, Lcom/blackberry/ids/Ln;->w(Ljava/lang/Object;[Ljava/lang/Object;)V

    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v2

    monitor-enter v2

    :try_start_55
    invoke-static {}, Lcom/blackberry/ids/IDS;->b()Lcom/blackberry/ids/BBIDStorage;

    move-result-object v0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-virtual {v0, v3, v4, v5}, Lcom/blackberry/ids/BBIDStorage;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    monitor-exit v2
    :try_end_60
    .catchall {:try_start_55 .. :try_end_60} :catchall_6e

    :cond_60
    sput-object p0, Lcom/blackberry/ids/UserAuthState;->a:Lcom/blackberry/ids/UserAuthState$AuthState;

    invoke-virtual {p0}, Lcom/blackberry/ids/UserAuthState$AuthState;->ordinal()I

    move-result v0

    invoke-virtual {p0}, Lcom/blackberry/ids/UserAuthState$AuthState;->name()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v0, v2}, Lcom/blackberry/ids/NotificationManager;->notify(IILjava/lang/String;)V

    :cond_6d
    return-void

    :catchall_6e
    move-exception v0

    monitor-exit v2

    throw v0

    :cond_71
    move v0, v1

    goto :goto_1b
.end method
