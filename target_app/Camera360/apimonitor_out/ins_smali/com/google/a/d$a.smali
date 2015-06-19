.class public final Lcom/google/a/d$a;
.super Ljava/io/IOException;
.field private static final serialVersionUID:J = -0x606a6e83ad3191dbL
.method constructor <init>()V
.registers 2
const-string/jumbo v0, "CodedOutputStream was writing to a flat byte array and ran out of space."
invoke-direct {p0, v0}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V
return-void
.end method