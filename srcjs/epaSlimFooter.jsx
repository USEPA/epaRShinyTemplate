import { reactShinyInput } from 'reactR';
import React, { useState, useEffect } from "react";
import { AppVersion } from "@us-epa-camd/easey-design-system";
import '@trussworks/react-uswds/lib/index.css';
import "./index.scss";
import '@trussworks/react-uswds/lib/uswds.css';

function epaFooter({ configuration, value }) {
  return (
    <>
      <div className="position-fixed bottom-0 width-full">
        <AppVersion
          version={configuration.appVersion}
          publishDate={configuration.appPublished}
        />
      </div>
    </>
  );
}

reactShinyInput(
  '.epaSlimFooter',
  'epaRShinyTemplate.epaSlimFooter',
  epaFooter
);
