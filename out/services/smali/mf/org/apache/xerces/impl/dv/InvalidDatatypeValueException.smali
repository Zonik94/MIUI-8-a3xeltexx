.class public Lmf/org/apache/xerces/impl/dv/InvalidDatatypeValueException;
.super Lmf/org/apache/xerces/impl/dv/DatatypeException;
.source "InvalidDatatypeValueException.java"


# static fields
.field static final serialVersionUID:J = -0x4ca843be27aa59ddL


# direct methods
.method public constructor <init>(Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 0
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "args"    # [Ljava/lang/Object;

    .prologue
    .line 42
    invoke-direct {p0, p1, p2}, Lmf/org/apache/xerces/impl/dv/DatatypeException;-><init>(Ljava/lang/String;[Ljava/lang/Object;)V

    .line 43
    return-void
.end method
