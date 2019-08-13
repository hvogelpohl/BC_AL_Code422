xmlport 50100 "examples"
{
    DefaultNamespace = 'urn:oasis:names:tc:xliff:document:1.2';
    UseDefaultNamespace = true;
    Direction = Import;
    UseRequestPage = false;

    schema
    {
        textelement(Test)
        {
            MaxOccurs = Once;
            MinOccurs = Once;
            XmlName = 'Test';

            tableelement("transunit"; "Internal Storage")
            {

                MaxOccurs = Unbounded;
                MinOccurs = Once;
                XmlName = 'trans-unit';
                UseTemporary = true;

                // This isn't working in 13.* but works in 14.*
                fieldelement(target; transunit."Blob Value")
                {
                    MaxOccurs = Once;
                    MinOccurs = Once;
                }
            }
        }
    }
}
