.class public interface abstract annotation Lcom/googlecode/javacpp/annotation/Properties;
.super Ljava/lang/Object;
.source "Properties.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/googlecode/javacpp/annotation/Properties;
        inherit = {}
        target = ""
        value = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract inherit()[Ljava/lang/Class;
.end method

.method public abstract target()Ljava/lang/String;
.end method

.method public abstract value()[Lcom/googlecode/javacpp/annotation/Platform;
.end method
