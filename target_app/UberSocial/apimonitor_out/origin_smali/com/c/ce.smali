.class public interface abstract annotation Lcom/c/ce;
.super Ljava/lang/Object;

# interfaces
.implements Ljava/lang/annotation/Annotation;


# annotations
.annotation system Ldalvik/annotation/AnnotationDefault;
    value = .subannotation Lcom/c/ce;
        a = .enum Lcom/c/ae;->PUBLIC:Lcom/c/ae;
        b = .enum Lcom/c/ae;->NONE:Lcom/c/ae;
    .end subannotation
.end annotation

.annotation runtime Ljava/lang/annotation/Retention;
    value = .enum Ljava/lang/annotation/RetentionPolicy;->SOURCE:Ljava/lang/annotation/RetentionPolicy;
.end annotation

.annotation runtime Ljava/lang/annotation/Target;
    value = {
        .enum Ljava/lang/annotation/ElementType;->TYPE:Ljava/lang/annotation/ElementType;
    }
.end annotation


# virtual methods
.method public abstract a()Lcom/c/ae;
.end method

.method public abstract b()Lcom/c/ae;
.end method
