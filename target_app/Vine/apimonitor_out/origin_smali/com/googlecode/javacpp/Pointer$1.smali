.class Lcom/googlecode/javacpp/Pointer$1;
.super Ljava/lang/Object;
.source "Pointer.java"

# interfaces
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacpp/Pointer;-><init>(Lcom/googlecode/javacpp/Pointer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/googlecode/javacpp/Pointer;

.field final synthetic val$p:Lcom/googlecode/javacpp/Pointer;


# direct methods
.method constructor <init>(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;)V
    .registers 3

    iput-object p1, p0, Lcom/googlecode/javacpp/Pointer$1;->this$0:Lcom/googlecode/javacpp/Pointer;

    iput-object p2, p0, Lcom/googlecode/javacpp/Pointer$1;->val$p:Lcom/googlecode/javacpp/Pointer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public deallocate()V
    .registers 2

    iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$1;->val$p:Lcom/googlecode/javacpp/Pointer;

    invoke-virtual {v0}, Lcom/googlecode/javacpp/Pointer;->deallocate()V

    return-void
.end method
