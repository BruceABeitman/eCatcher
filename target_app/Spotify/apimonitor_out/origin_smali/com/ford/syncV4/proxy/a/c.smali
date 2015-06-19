.class public final Lcom/ford/syncV4/proxy/a/c;
.super Lcom/ford/syncV4/proxy/a/a;
.source "SourceFile"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Ljava/lang/Exception;


# direct methods
.method public constructor <init>()V
    .registers 2

    const-string v0, "OnProxyClosed"

    invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/a/a;-><init>(Ljava/lang/String;)V

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/Exception;)V
    .registers 4

    const-string v0, "OnProxyClosed"

    invoke-direct {p0, v0}, Lcom/ford/syncV4/proxy/a/a;-><init>(Ljava/lang/String;)V

    iput-object p1, p0, Lcom/ford/syncV4/proxy/a/c;->a:Ljava/lang/String;

    iput-object p2, p0, Lcom/ford/syncV4/proxy/a/c;->b:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public final b()Ljava/lang/String;
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/proxy/a/c;->a:Ljava/lang/String;

    return-object v0
.end method

.method public final c()Ljava/lang/Exception;
    .registers 2

    iget-object v0, p0, Lcom/ford/syncV4/proxy/a/c;->b:Ljava/lang/Exception;

    return-object v0
.end method
