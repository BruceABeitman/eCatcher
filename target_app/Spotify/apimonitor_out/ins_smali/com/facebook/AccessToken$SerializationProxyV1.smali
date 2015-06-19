.class  Lcom/facebook/AccessToken$SerializationProxyV1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/io/Serializable;
.field private static final serialVersionUID:J = -0x2288d511ce8549edL
.field private final expires:Ljava/util/Date;
.field private final lastRefresh:Ljava/util/Date;
.field private final permissions:Ljava/util/List;
.field private final source:Lcom/facebook/AccessTokenSource;
.field private final token:Ljava/lang/String;
.method private constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
.registers 6
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iput-object p2, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->expires:Ljava/util/Date;
iput-object p3, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->permissions:Ljava/util/List;
iput-object p1, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->token:Ljava/lang/String;
iput-object p4, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->source:Lcom/facebook/AccessTokenSource;
iput-object p5, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->lastRefresh:Ljava/util/Date;
return-void
.end method
.method synthetic constructor <init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;B)V
.registers 7
invoke-direct/range {p0 .. p5}, Lcom/facebook/AccessToken$SerializationProxyV1;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
return-void
.end method
.method private readResolve()Ljava/lang/Object;
.registers 7
new-instance v0, Lcom/facebook/AccessToken;
iget-object v1, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->token:Ljava/lang/String;
iget-object v2, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->expires:Ljava/util/Date;
iget-object v3, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->permissions:Ljava/util/List;
iget-object v4, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->source:Lcom/facebook/AccessTokenSource;
iget-object v5, p0, Lcom/facebook/AccessToken$SerializationProxyV1;->lastRefresh:Ljava/util/Date;
invoke-direct/range {v0 .. v5}, Lcom/facebook/AccessToken;-><init>(Ljava/lang/String;Ljava/util/Date;Ljava/util/List;Lcom/facebook/AccessTokenSource;Ljava/util/Date;)V
return-object v0
.end method