.class public interface abstract annotation Lcom/googlecode/javacpp/annotation/StdString;
.super Ljava/lang/Object;
.source "StdString.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation runtime Lcom/googlecode/javacpp/annotation/Adapter;
    value = "StringAdapter"
.end annotation

.annotation runtime Lcom/googlecode/javacpp/annotation/Cast;
    value = {
        "std::string&"
    }
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->PARAMETER:Ljava/lang/annotation/ElementType;
    }
.end annotation
