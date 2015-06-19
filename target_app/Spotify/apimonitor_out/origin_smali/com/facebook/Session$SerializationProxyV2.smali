.class Lcom/facebook/Session$SerializationProxyV2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = 0x6a59fe98cd935b00L


# instance fields
.field private final applicationId:Ljava/lang/String;

.field private final lastAttemptedTokenExtendDate:Ljava/util/Date;

.field private final pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

.field private final requestedPermissions:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final shouldAutoPublish:Z

.field private final state:Lcom/facebook/SessionState;

.field private final tokenInfo:Lcom/facebook/AccessToken;


# direct methods
.method constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;Lcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;)V
    .registers 8
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/facebook/SessionState;",
            "Lcom/facebook/AccessToken;",
            "Ljava/util/Date;",
            "Lcom/facebook/Session$AuthorizationRequest;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/Session$SerializationProxyV2;->applicationId:Ljava/lang/String;

    iput-object p2, p0, Lcom/facebook/Session$SerializationProxyV2;->state:Lcom/facebook/SessionState;

    iput-object p3, p0, Lcom/facebook/Session$SerializationProxyV2;->tokenInfo:Lcom/facebook/AccessToken;

    iput-object p4, p0, Lcom/facebook/Session$SerializationProxyV2;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/facebook/Session$SerializationProxyV2;->shouldAutoPublish:Z

    iput-object p5, p0, Lcom/facebook/Session$SerializationProxyV2;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    iput-object p6, p0, Lcom/facebook/Session$SerializationProxyV2;->requestedPermissions:Ljava/util/Set;

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 9

    new-instance v0, Lcom/facebook/Session;

    iget-object v1, p0, Lcom/facebook/Session$SerializationProxyV2;->applicationId:Ljava/lang/String;

    iget-object v2, p0, Lcom/facebook/Session$SerializationProxyV2;->state:Lcom/facebook/SessionState;

    iget-object v3, p0, Lcom/facebook/Session$SerializationProxyV2;->tokenInfo:Lcom/facebook/AccessToken;

    iget-object v4, p0, Lcom/facebook/Session$SerializationProxyV2;->lastAttemptedTokenExtendDate:Ljava/util/Date;

    iget-boolean v5, p0, Lcom/facebook/Session$SerializationProxyV2;->shouldAutoPublish:Z

    iget-object v5, p0, Lcom/facebook/Session$SerializationProxyV2;->pendingAuthorizationRequest:Lcom/facebook/Session$AuthorizationRequest;

    iget-object v6, p0, Lcom/facebook/Session$SerializationProxyV2;->requestedPermissions:Ljava/util/Set;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;Lcom/facebook/Session$AuthorizationRequest;Ljava/util/Set;B)V

    return-object v0
.end method
