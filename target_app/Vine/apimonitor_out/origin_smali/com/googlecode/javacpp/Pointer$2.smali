.class Lcom/googlecode/javacpp/Pointer$2;
.super Ljava/lang/Object;
.source "Pointer.java"

# interfaces
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/googlecode/javacpp/Pointer;-><init>(Ljava/nio/Buffer;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field bb:Ljava/nio/Buffer;

.field final synthetic this$0:Lcom/googlecode/javacpp/Pointer;

.field final synthetic val$b:Ljava/nio/Buffer;


# direct methods
.method constructor <init>(Lcom/googlecode/javacpp/Pointer;Ljava/nio/Buffer;)V
    .registers 4

    iput-object p1, p0, Lcom/googlecode/javacpp/Pointer$2;->this$0:Lcom/googlecode/javacpp/Pointer;

    iput-object p2, p0, Lcom/googlecode/javacpp/Pointer$2;->val$b:Ljava/nio/Buffer;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$2;->val$b:Ljava/nio/Buffer;

    iput-object v0, p0, Lcom/googlecode/javacpp/Pointer$2;->bb:Ljava/nio/Buffer;

    return-void
.end method


# virtual methods
.method public deallocate()V
    .registers 2

    const/4 v0, 0x0

    iput-object v0, p0, Lcom/googlecode/javacpp/Pointer$2;->bb:Ljava/nio/Buffer;

    return-void
.end method
