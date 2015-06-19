.class public Ljavax/mail/internet/HeaderTokenizer;
.super Ljava/lang/Object;
.source "SourceFile"
.field private static final EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token; = null
.field public static final MIME:Ljava/lang/String; = "()<>@,;:\\\"\t []/?="
.field public static final RFC822:Ljava/lang/String; = "()<>@,;:\\\"\t .[]"
.field private currentPos:I
.field private delimiters:Ljava/lang/String;
.field private maxPos:I
.field private nextPos:I
.field private peekPos:I
.field private skipComments:Z
.field private string:Ljava/lang/String;
.method static constructor <clinit>()V
.registers 3
new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;
const/4 v1, -0x4
const/4 v2, 0x0
invoke-direct {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V
sput-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;
return-void
.end method
.method public constructor <init>(Ljava/lang/String;)V
.registers 3
const-string v0, "()<>@,;:\\\"\t .[]"
invoke-direct {p0, p1, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
.registers 4
const/4 v0, 0x1
invoke-direct {p0, p1, p2, v0}, Ljavax/mail/internet/HeaderTokenizer;-><init>(Ljava/lang/String;Ljava/lang/String;Z)V
return-void
.end method
.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Z)V
.registers 5
invoke-direct {p0}, Ljava/lang/Object;-><init>()V
if-nez p1, :cond_7
const-string p1, ""
:cond_7
iput-object p1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;
iput-boolean p3, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z
iput-object p2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;
const/4 v0, 0x0
iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I
iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I
iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;
invoke-virtual {v0}, Ljava/lang/String;->length()I
move-result v0
iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I
return-void
.end method
.method private static filterToken(Ljava/lang/String;II)Ljava/lang/String;
.registers 11
const/4 v2, 0x1
const/4 v1, 0x0
new-instance v4, Ljava/lang/StringBuffer;
invoke-direct {v4}, Ljava/lang/StringBuffer;-><init>()V
move v3, v1
move v0, v1
:goto_9
if-lt p1, p2, :cond_10
invoke-virtual {v4}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;
move-result-object v0
return-object v0
:cond_10
invoke-virtual {p0, p1}, Ljava/lang/String;->charAt(I)C
move-result v5
const/16 v6, 0xa
if-ne v5, v6, :cond_22
if-eqz v3, :cond_22
move v3, v0
move v0, v1
:goto_1c
add-int/lit8 p1, p1, 0x1
move v7, v0
move v0, v3
move v3, v7
goto :goto_9
:cond_22
if-nez v0, :cond_38
const/16 v3, 0x5c
if-ne v5, v3, :cond_2b
move v0, v1
move v3, v2
goto :goto_1c
:cond_2b
const/16 v3, 0xd
if-ne v5, v3, :cond_32
move v3, v0
move v0, v2
goto :goto_1c
:cond_32
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v3, v0
move v0, v1
goto :goto_1c
:cond_38
invoke-virtual {v4, v5}, Ljava/lang/StringBuffer;->append(C)Ljava/lang/StringBuffer;
move v0, v1
move v3, v1
goto :goto_1c
.end method
.method private getNext()Ljavax/mail/internet/HeaderTokenizer$Token;
.registers 12
const/4 v9, -0x4
const/16 v8, 0x28
const/16 v7, 0x22
const/16 v6, 0x20
const/4 v2, 0x1
iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I
if-lt v0, v1, :cond_11
sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;
:goto_10
return-object v0
:cond_11
invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I
move-result v0
if-ne v0, v9, :cond_1a
sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;
goto :goto_10
:cond_1a
const/4 v0, 0x0
iget-object v1, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;
iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
invoke-virtual {v1, v3}, Ljava/lang/String;->charAt(I)C
move-result v1
:goto_23
if-eq v1, v8, :cond_3b
if-ne v1, v7, :cond_105
iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
:goto_2d
iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I
if-lt v3, v4, :cond_bc
new-instance v0, Ljavax/mail/internet/ParseException;
const-string v1, "Unbalanced quoted string"
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_3b
iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
add-int/lit8 v3, v1, 0x1
iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
move v1, v0
move v0, v2
:goto_43
if-lez v0, :cond_4b
iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I
if-lt v4, v5, :cond_55
:cond_4b
if-eqz v0, :cond_81
new-instance v0, Ljavax/mail/internet/ParseException;
const-string v1, "Unbalanced comments"
invoke-direct {v0, v1}, Ljavax/mail/internet/ParseException;-><init>(Ljava/lang/String;)V
throw v0
:cond_55
iget-object v4, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;
iget v5, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
invoke-virtual {v4, v5}, Ljava/lang/String;->charAt(I)C
move-result v4
const/16 v5, 0x5c
if-ne v4, v5, :cond_6f
iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
add-int/lit8 v1, v1, 0x1
iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
move v1, v2
:cond_68
:goto_68
iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
add-int/lit8 v4, v4, 0x1
iput v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
goto :goto_43
:cond_6f
const/16 v5, 0xd
if-ne v4, v5, :cond_75
move v1, v2
goto :goto_68
:cond_75
if-ne v4, v8, :cond_7a
add-int/lit8 v0, v0, 0x1
goto :goto_68
:cond_7a
const/16 v5, 0x29
if-ne v4, v5, :cond_68
add-int/lit8 v0, v0, -0x1
goto :goto_68
:cond_81
iget-boolean v0, p0, Ljavax/mail/internet/HeaderTokenizer;->skipComments:Z
if-nez v0, :cond_a5
if-eqz v1, :cond_9a
iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;
iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
add-int/lit8 v1, v1, -0x1
invoke-static {v0, v3, v1}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
:goto_91
new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;
const/4 v2, -0x3
invoke-direct {v1, v2, v0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V
move-object v0, v1
goto/16 :goto_10
:cond_9a
iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;
iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
add-int/lit8 v1, v1, -0x1
invoke-virtual {v0, v3, v1}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
goto :goto_91
:cond_a5
invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->skipWhiteSpace()I
move-result v0
if-ne v0, v9, :cond_af
sget-object v0, Ljavax/mail/internet/HeaderTokenizer;->EOFToken:Ljavax/mail/internet/HeaderTokenizer$Token;
goto/16 :goto_10
:cond_af
iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;
iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C
move-result v0
move v10, v1
move v1, v0
move v0, v10
goto/16 :goto_23
:cond_bc
iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;
iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
invoke-virtual {v3, v4}, Ljava/lang/String;->charAt(I)C
move-result v3
const/16 v4, 0x5c
if-ne v3, v4, :cond_d7
iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
move v0, v2
:cond_cf
:goto_cf
iget v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
add-int/lit8 v3, v3, 0x1
iput v3, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
goto/16 :goto_2d
:cond_d7
const/16 v4, 0xd
if-ne v3, v4, :cond_dd
move v0, v2
goto :goto_cf
:cond_dd
if-ne v3, v7, :cond_cf
iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
add-int/lit8 v2, v2, 0x1
iput v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
if-eqz v0, :cond_fa
iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;
iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
add-int/lit8 v2, v2, -0x1
invoke-static {v0, v1, v2}, Ljavax/mail/internet/HeaderTokenizer;->filterToken(Ljava/lang/String;II)Ljava/lang/String;
move-result-object v0
:goto_f1
new-instance v1, Ljavax/mail/internet/HeaderTokenizer$Token;
const/4 v2, -0x2
invoke-direct {v1, v2, v0}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V
move-object v0, v1
goto/16 :goto_10
:cond_fa
iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;
iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
add-int/lit8 v2, v2, -0x1
invoke-virtual {v0, v1, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v0
goto :goto_f1
:cond_105
if-lt v1, v6, :cond_113
const/16 v0, 0x7f
if-ge v1, v0, :cond_113
iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;
invoke-virtual {v0, v1}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-ltz v0, :cond_12a
:cond_113
iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
new-array v2, v2, [C
const/4 v0, 0x0
aput-char v1, v2, v0
new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;
new-instance v3, Ljava/lang/String;
invoke-direct {v3, v2}, Ljava/lang/String;-><init>([C)V
invoke-direct {v0, v1, v3}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V
goto/16 :goto_10
:cond_12a
iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
:goto_12c
iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I
if-lt v0, v2, :cond_142
:cond_132
new-instance v0, Ljavax/mail/internet/HeaderTokenizer$Token;
const/4 v2, -0x1
iget-object v3, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;
iget v4, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
invoke-virtual {v3, v1, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;
move-result-object v1
invoke-direct {v0, v2, v1}, Ljavax/mail/internet/HeaderTokenizer$Token;-><init>(ILjava/lang/String;)V
goto/16 :goto_10
:cond_142
iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;
iget v2, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
invoke-virtual {v0, v2}, Ljava/lang/String;->charAt(I)C
move-result v0
if-lt v0, v6, :cond_132
const/16 v2, 0x7f
if-ge v0, v2, :cond_132
if-eq v0, v8, :cond_132
if-eq v0, v6, :cond_132
if-eq v0, v7, :cond_132
iget-object v2, p0, Ljavax/mail/internet/HeaderTokenizer;->delimiters:Ljava/lang/String;
invoke-virtual {v2, v0}, Ljava/lang/String;->indexOf(I)I
move-result v0
if-gez v0, :cond_132
iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
goto :goto_12c
.end method
.method private skipWhiteSpace()I
.registers 3
:goto_0
iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->maxPos:I
if-lt v0, v1, :cond_8
const/4 v0, -0x4
:goto_7
return v0
:cond_8
iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;
iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C
move-result v0
const/16 v1, 0x20
if-eq v0, v1, :cond_23
const/16 v1, 0x9
if-eq v0, v1, :cond_23
const/16 v1, 0xd
if-eq v0, v1, :cond_23
const/16 v1, 0xa
if-eq v0, v1, :cond_23
iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
goto :goto_7
:cond_23
iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
add-int/lit8 v0, v0, 0x1
iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
goto :goto_0
.end method
.method public getRemainder()Ljava/lang/String;
.registers 3
iget-object v0, p0, Ljavax/mail/internet/HeaderTokenizer;->string:Ljava/lang/String;
iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I
invoke-virtual {v0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;
move-result-object v0
return-object v0
.end method
.method public next()Ljavax/mail/internet/HeaderTokenizer$Token;
.registers 3
iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I
iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->getNext()Ljavax/mail/internet/HeaderTokenizer$Token;
move-result-object v0
iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I
iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->nextPos:I
return-object v0
.end method
.method public peek()Ljavax/mail/internet/HeaderTokenizer$Token;
.registers 3
iget v0, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I
iput v0, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
invoke-direct {p0}, Ljavax/mail/internet/HeaderTokenizer;->getNext()Ljavax/mail/internet/HeaderTokenizer$Token;
move-result-object v0
iget v1, p0, Ljavax/mail/internet/HeaderTokenizer;->currentPos:I
iput v1, p0, Ljavax/mail/internet/HeaderTokenizer;->peekPos:I
return-object v0
.end method