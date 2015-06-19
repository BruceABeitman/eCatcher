.class public final Lcom/ford/syncV4/transport/d;
.super Lcom/ford/syncV4/transport/e;
.source "SourceFile"


# instance fields
.field private b:Z


# direct methods
.method public constructor <init>()V
    .registers 2

    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/ford/syncV4/transport/d;-><init>(B)V

    return-void
.end method

.method private constructor <init>(B)V
    .registers 3

    const/4 v0, 0x1

    invoke-direct {p0}, Lcom/ford/syncV4/transport/e;-><init>()V

    iput-boolean v0, p0, Lcom/ford/syncV4/transport/d;->b:Z

    iput-boolean v0, p0, Lcom/ford/syncV4/transport/e;->a:Z

    return-void
.end method


# virtual methods
.method public final a()Lcom/ford/syncV4/transport/TransportType;
    .registers 2

    sget-object v0, Lcom/ford/syncV4/transport/TransportType;->a:Lcom/ford/syncV4/transport/TransportType;

    return-object v0
.end method

.method public final b()Z
    .registers 2

    iget-boolean v0, p0, Lcom/ford/syncV4/transport/d;->b:Z

    return v0
.end method
