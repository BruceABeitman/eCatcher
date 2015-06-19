.class public interface abstract annotation Lcom/squareup/wire/n;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/squareup/wire/n;
        b = .enum Lcom/squareup/wire/Message$Datatype;->MESSAGE:Lcom/squareup/wire/Message$Datatype;
        c = .enum Lcom/squareup/wire/Message$Label;->OPTIONAL:Lcom/squareup/wire/Message$Label;
        d = false
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->RUNTIME:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->FIELD:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract a()I
.end method

.method public abstract b()Lcom/squareup/wire/Message$Datatype;
.end method

.method public abstract c()Lcom/squareup/wire/Message$Label;
.end method

.method public abstract d()Z
.end method
