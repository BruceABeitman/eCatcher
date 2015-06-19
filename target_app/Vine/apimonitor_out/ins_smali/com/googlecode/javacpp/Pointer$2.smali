.class  Lcom/googlecode/javacpp/Pointer$2;
.super Ljava/lang/Object;
.source "Pointer.java"
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;
.field  bb:Ljava/nio/Buffer;
.field final synthetic this$0:Lcom/googlecode/javacpp/Pointer;
.field final synthetic val$b:Ljava/nio/Buffer;
.method constructor <init>(Lcom/googlecode/javacpp/Pointer;Ljava/nio/Buffer;)V
.registers 4
iput-object p1, p0, Lcom/googlecode/javacpp/Pointer$2;->this$0:Lcom/googlecode/javacpp/Pointer;
iput-object p2, p0, Lcom/googlecode/javacpp/Pointer$2;->val$b:Ljava/nio/Buffer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$2;->val$b:Ljava/nio/Buffer;
iput-object v0, p0, Lcom/googlecode/javacpp/Pointer$2;->bb:Ljava/nio/Buffer;
return-void
.end method
.method public deallocate()V
.registers 2
const/4 v0, 0x0
iput-object v0, p0, Lcom/googlecode/javacpp/Pointer$2;->bb:Ljava/nio/Buffer;
return-void
.end method