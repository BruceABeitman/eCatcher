.class  Lcom/millennialmedia/android/dp$1;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Ljava/lang/Runnable;
.field final synthetic a:Lcom/millennialmedia/android/dn;
.field final synthetic b:Lcom/millennialmedia/android/dp;
.method constructor <init>(Lcom/millennialmedia/android/dp;Lcom/millennialmedia/android/dn;)V
.registers 3
iput-object p1, p0, Lcom/millennialmedia/android/dp$1;->b:Lcom/millennialmedia/android/dp;
iput-object p2, p0, Lcom/millennialmedia/android/dp$1;->a:Lcom/millennialmedia/android/dn;
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method public run()V
.registers 2
iget-object v0, p0, Lcom/millennialmedia/android/dp$1;->a:Lcom/millennialmedia/android/dn;
invoke-virtual {v0}, Lcom/millennialmedia/android/dn;->l()V
return-void
.end method