.class public interface abstract annotation Lcom/googlecode/javacpp/annotation/Platform;
.super Ljava/lang/Object;
.source "Platform.java"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/googlecode/javacpp/annotation/Platform;
        cinclude = {}
        define = {}
        framework = {}
        include = {}
        includepath = {}
        library = ""
        link = {}
        linkpath = {}
        not = {}
        options = {}
        preload = {}
        preloadpath = {}
        value = {}
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;,
        .enum Ljava/lang/annotation/ElementType;->METHOD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract cinclude()[Ljava/lang/String;
.end method

.method public abstract define()[Ljava/lang/String;
.end method

.method public abstract framework()[Ljava/lang/String;
.end method

.method public abstract include()[Ljava/lang/String;
.end method

.method public abstract includepath()[Ljava/lang/String;
.end method

.method public abstract library()Ljava/lang/String;
.end method

.method public abstract link()[Ljava/lang/String;
.end method

.method public abstract linkpath()[Ljava/lang/String;
.end method

.method public abstract not()[Ljava/lang/String;
.end method

.method public abstract options()[Ljava/lang/String;
.end method

.method public abstract preload()[Ljava/lang/String;
.end method

.method public abstract preloadpath()[Ljava/lang/String;
.end method

.method public abstract value()[Ljava/lang/String;
.end method
