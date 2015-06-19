.class  Lcom/googlecode/javacpp/Pointer$1;
.super Ljava/lang/Object;
.source "Pointer.java"
.implements Lcom/googlecode/javacpp/Pointer$Deallocator;
.field final synthetic this$0:Lcom/googlecode/javacpp/Pointer;
.field final synthetic val$p:Lcom/googlecode/javacpp/Pointer;
.method constructor <init>(Lcom/googlecode/javacpp/Pointer;Lcom/googlecode/javacpp/Pointer;)V
.registers 3
iput-object p1, p0, Lcom/googlecode/javacpp/Pointer$1;->this$0:Lcom/googlecode/javacpp/Pointer;
iput-object p2, p0, Lcom/googlecode/javacpp/Pointer$1;->val$p:Lcom/googlecode/javacpp/Pointer;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public deallocate()V
.registers 2
iget-object v0, p0, Lcom/googlecode/javacpp/Pointer$1;->val$p:Lcom/googlecode/javacpp/Pointer;
invoke-virtual {v0}, Lcom/googlecode/javacpp/Pointer;->deallocate()V
return-void
.end method