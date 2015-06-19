.class public Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;
.super Ljava/lang/Object;
.source "z_T4JInternalJSONImplFactory.java"

# interfaces
.implements Ltwitter4j/internal/json/z_T4JInternalFactory;


# static fields
.field private static final serialVersionUID:J = 0x4868b7d54ca3e042L


# instance fields
.field private conf:Ltwitter4j/conf/Configuration;


# direct methods
.method public constructor <init>(Ltwitter4j/conf/Configuration;)V
    .registers 2

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .registers 7

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-ne p0, p1, :cond_5

    :cond_4
    :goto_4
    return v1

    :cond_5
    instance-of v3, p1, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;

    if-nez v3, :cond_b

    move v1, v2

    goto :goto_4

    :cond_b
    move-object v0, p1

    check-cast v0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;

    iget-object v3, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    if-eqz v3, :cond_1e

    iget-object v3, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    iget-object v4, v0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v3, v4}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_4

    :goto_1c
    move v1, v2

    goto :goto_4

    :cond_1e
    iget-object v3, v0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    if-eqz v3, :cond_4

    goto :goto_1c
.end method

.method public hashCode()I
    .registers 2

    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    if-eqz v0, :cond_b

    iget-object v0, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    :goto_a
    return v0

    :cond_b
    const/4 v0, 0x0

    goto :goto_a
.end method

.method public toString()Ljava/lang/String;
    .registers 3

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "JSONImplFactory{conf="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Ltwitter4j/internal/json/z_T4JInternalJSONImplFactory;->conf:Ltwitter4j/conf/Configuration;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    const/16 v1, 0x7d

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
