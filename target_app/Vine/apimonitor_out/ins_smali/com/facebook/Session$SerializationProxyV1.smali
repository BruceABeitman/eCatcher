.class  Lcom/facebook/Session$SerializationProxyV1;
.super Ljava/lang/Object;
.source "Session.java"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = 0x6a59fe98cd935affL
.field private final applicationId:Ljava/lang/String;
.field private final lastAttemptedTokenExtendDate:Ljava/util/Date;
.field private final pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
.field private final shouldAutoPublish:Z
.field private final state:Lcom/facebook/SessionState;
.field private final tokenInfo:Lcom/facebook/AccessToken;
.method constructor <init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;)V
.registers 7
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p1, p0, Lcom/facebook/Session$SerializationProxyV1;->applicationId:Ljava/lang/String;
iput-object p2, p0, Lcom/facebook/Session$SerializationProxyV1;->state:Lcom/facebook/SessionState;
iput-object p3, p0, Lcom/facebook/Session$SerializationProxyV1;->tokenInfo:Lcom/facebook/AccessToken;
iput-object p4, p0, Lcom/facebook/Session$SerializationProxyV1;->lastAttemptedTokenExtendDate:Ljava/util/Date;
iput-boolean p5, p0, Lcom/facebook/Session$SerializationProxyV1;->shouldAutoPublish:Z
iput-object p6, p0, Lcom/facebook/Session$SerializationProxyV1;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
return-void
.end method
.method private readResolve()Ljava/lang/Object;
.registers 9
new-instance v0, Lcom/facebook/Session;
iget-object v1, p0, Lcom/facebook/Session$SerializationProxyV1;->applicationId:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/Session$SerializationProxyV1;->state:Lcom/facebook/SessionState;
iget-object v3, p0, Lcom/facebook/Session$SerializationProxyV1;->tokenInfo:Lcom/facebook/AccessToken;
iget-object v4, p0, Lcom/facebook/Session$SerializationProxyV1;->lastAttemptedTokenExtendDate:Ljava/util/Date;
iget-boolean v5, p0, Lcom/facebook/Session$SerializationProxyV1;->shouldAutoPublish:Z
iget-object v6, p0, Lcom/facebook/Session$SerializationProxyV1;->pendingRequest:Lcom/facebook/Session$AuthorizationRequest;
const/4 v7, 0x0
invoke-direct/range {v0 .. v7}, Lcom/facebook/Session;-><init>(Ljava/lang/String;Lcom/facebook/SessionState;Lcom/facebook/AccessToken;Ljava/util/Date;ZLcom/facebook/Session$AuthorizationRequest;Lcom/facebook/Session$1;)V
return-object v0
.end method