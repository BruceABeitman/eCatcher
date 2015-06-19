.class  Lcom/millennialmedia/android/ch$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Ljava/lang/String;
.field final synthetic b:Lcom/millennialmedia/android/ch;
.method constructor <init>(Lcom/millennialmedia/android/ch;Ljava/lang/String;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/android/ch$1;->b:Lcom/millennialmedia/android/ch;
iput-object p2, p0, Lcom/millennialmedia/android/ch$1;->a:Ljava/lang/String;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 3
iget-object v0, p0, Lcom/millennialmedia/android/ch$1;->b:Lcom/millennialmedia/android/ch;
iget-object v1, p0, Lcom/millennialmedia/android/ch$1;->a:Ljava/lang/String;
invoke-static {v0, v1}, Lcom/millennialmedia/android/ch;->a(Lcom/millennialmedia/android/ch;Ljava/lang/String;)V
return-void
.end method