.class  Lcom/beetstra/jutf7/UTF7Charset;
.super Lcom/beetstra/jutf7/UTF7StyleCharset;
.source "UTF7Charset.java"
.field private static final BASE64_ALPHABET:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
.field private static final RULE_3:Ljava/lang/String; = " \t\r\n"
.field private static final SET_D:Ljava/lang/String; = "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\'(),-./:?"
.field private static final SET_O:Ljava/lang/String; = "!\"#$%&*;<=>@[]^_`{|}"
.field final directlyEncoded:Ljava/lang/String;
.method constructor <init>(Ljava/lang/String;[Ljava/lang/String;Z)V
.registers 6
const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789+/"
const/4 v1, 0x0
invoke-direct {p0, p1, p2, v0, v1}, Lcom/beetstra/jutf7/UTF7StyleCharset;-><init>(Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Z)V
if-eqz p3, :cond_d
const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\'(),-./:?!\"#$%&*;<=>@[]^_`{|} \t\r\n"
iput-object v0, p0, Lcom/beetstra/jutf7/UTF7Charset;->directlyEncoded:Ljava/lang/String;
:goto_c
return-void
:cond_d
const-string v0, "ABCDEFGHIJKLMNOPQRSTUVWXYZabcdefghijklmnopqrstuvwxyz0123456789\'(),-./:? \t\r\n"
iput-object v0, p0, Lcom/beetstra/jutf7/UTF7Charset;->directlyEncoded:Ljava/lang/String;
goto :goto_c
.end method
.method  canEncodeDirectly(C)Z
.registers 3
iget-object v0, p0, Lcom/beetstra/jutf7/UTF7Charset;->directlyEncoded:Ljava/lang/String;
invoke-virtual {v0, p1}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ltz v0, :cond_a
const/4 v0, 0x1
:goto_9
return v0
:cond_a
const/4 v0, 0x0
goto :goto_9
.end method
.method  shift()B
.registers 2
const/16 v0, 0x2b
return v0
.end method
.method  unshift()B
.registers 2
const/16 v0, 0x2d
return v0
.end method