.class Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/io/Serializable;


# static fields
.field private static final serialVersionUID:J = -0x2288d511ce8549edL


# instance fields
.field private final isImplicit:Z

.field private final jsonString:Ljava/lang/String;


# direct methods
.method private constructor <init>(Ljava/lang/String;Z)V
    .registers 3

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;->jsonString:Ljava/lang/String;

    iput-boolean p2, p0, Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;->isImplicit:Z

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ZB)V
    .registers 4

    invoke-direct {p0, p1, p2}, Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;-><init>(Ljava/lang/String;Z)V

    return-void
.end method

.method private readResolve()Ljava/lang/Object;
    .registers 5

    new-instance v0, Lcom/facebook/AppEventsLogger$AppEvent;

    iget-object v1, p0, Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;->jsonString:Ljava/lang/String;

    iget-boolean v2, p0, Lcom/facebook/AppEventsLogger$AppEvent$SerializationProxyV1;->isImplicit:Z

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/facebook/AppEventsLogger$AppEvent;-><init>(Ljava/lang/String;ZB)V

    return-object v0
.end method
