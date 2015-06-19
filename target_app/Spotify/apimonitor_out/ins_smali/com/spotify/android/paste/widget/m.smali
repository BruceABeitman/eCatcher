.class final Lcom/spotify/android/paste/widget/m;
.super Ljava/lang/Object;
.source "SourceFile"
.implements Lcom/spotify/android/paste/widget/k;
.field private a:[I
.field private b:[I
.method private constructor <init>()V
.registers 1
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
return-void
.end method
.method synthetic constructor <init>(B)V
.registers 2
invoke-direct {p0}, Lcom/spotify/android/paste/widget/m;-><init>()V
return-void
.end method
.method public final a(I)I
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/widget/m;->a:[I
iget-object v1, p0, Lcom/spotify/android/paste/widget/m;->a:[I
array-length v1, v1
rem-int v1, p1, v1
aget v0, v0, v1
return v0
.end method
.method final varargs a([I)V
.registers 2
iput-object p1, p0, Lcom/spotify/android/paste/widget/m;->a:[I
return-void
.end method
.method public final b(I)I
.registers 4
iget-object v0, p0, Lcom/spotify/android/paste/widget/m;->b:[I
iget-object v1, p0, Lcom/spotify/android/paste/widget/m;->b:[I
array-length v1, v1
rem-int v1, p1, v1
aget v0, v0, v1
return v0
.end method
.method final varargs b([I)V
.registers 2
iput-object p1, p0, Lcom/spotify/android/paste/widget/m;->b:[I
return-void
.end method