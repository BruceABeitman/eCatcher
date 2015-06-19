.class public interface abstract annotation Lcom/fasterxml/jackson/annotation/JsonFormat;
.super Ljava/lang/Object;
.source "JsonFormat.java"
.implements Ljava/lang/annotation/Annotation;
.field public static final DEFAULT_LOCALE:Ljava/lang/String; = "##default"
.field public static final DEFAULT_TIMEZONE:Ljava/lang/String; = "##default"
.method public abstract locale()Ljava/lang/String;
.end method
.method public abstract pattern()Ljava/lang/String;
.end method
.method public abstract shape()Lcom/fasterxml/jackson/annotation/JsonFormat$Shape;
.end method
.method public abstract timezone()Ljava/lang/String;
.end method